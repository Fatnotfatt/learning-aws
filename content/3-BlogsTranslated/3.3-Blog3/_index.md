---
title: "Blog 3"
date: 2025-09-10
weight: 1
chapter: false
pre: " <b> 3.3. </b> "
---
# **Di chuyển tìm kiếm toàn văn từ SQL Server sang Amazon Aurora PostgreSQL-Compatible Edition hoặc Amazon RDS for PostgreSQL**

---

Tác giả: Sivaprasad Appana , Surya Nallu , và Saumitra Das

Ngày đăng: 19 tháng 8, 2024

---

Trong thế giới dữ liệu ngày nay, khả năng tìm và truy xuất thông tin từ các tập dữ liệu lớn là rất quan trọng. Mặc dù một số hệ quản trị cơ sở dữ liệu (cả thương mại và mã nguồn mở) nổi trội trong xử lý dữ liệu cấu trúc, PostgreSQL cũng cung cấp các công cụ mạnh mẽ để tìm kiếm dữ liệu không cấu trúc hoặc bán cấu trúc. PostgreSQL có sẵn full-text search (FTS) tích hợp, và còn hỗ trợ các extension như pg\_trgm và pg\_bigm cho việc tìm kiếm văn bản.

Các truy vấn truyền thống dùng toán tử LIKE, ILIKE hoặc biểu thức chính quy rất phù hợp để tìm chuỗi chính xác hoặc dữ liệu cấu trúc, nhưng có hạn chế nếu cần tìm trong các vùng văn bản lớn như tài liệu, bài viết hoặc mô tả sản phẩm.

Khi di chuyển từ một cơ sở dữ liệu thương mại như SQL Server sang PostgreSQL (như Amazon Aurora PostgreSQL-Compatible hoặc Amazon RDS for PostgreSQL), việc di chuyển full-text search đòi hỏi phải sửa đổi các truy vấn và cấu trúc schema, vì cách triển khai FTS giữa hai hệ thống khác nhau. Công cụ AWS Schema Conversion Tool (AWS SCT) không tự động chuyển đổi mã liên quan full-text search.

SQL Server FTS được thiết kế để tìm từ, cụm từ hay các dạng từ (stemming) trong dữ liệu văn bản không cấu trúc. Nó hỗ trợ tìm nhanh, xếp hạng và lập chỉ mục văn bản, giúp ứng dụng xử lý lượng lớn thông tin dạng văn bản hiệu quả.

Trong bài viết này, chúng tôi sẽ hướng dẫn cách di chuyển full-text search từ SQL Server sang Amazon Aurora PostgreSQL bằng cách sử dụng các kiểu dữ liệu tsvector và tsquery. Đồng thời, chúng tôi cũng chỉ cách triển khai FTS bằng extension pg\_trgm và pg\_bigm.

---

## **Yêu cầu chuẩn bị (Prerequisites)**

Trong bài này, chúng tôi sử dụng cơ sở dữ liệu mẫu AdventureWorks2019 để minh họa cách di chuyển FTS từ SQL Server 2019 Standard sang PostgreSQL.

Các bước chính để thiết lập FTS trong SQL Server:

1. Kích hoạt full-text search cho database AdventureWorks2019:

USE \[AdventureWorks2019\]  
GO  
EXEC sp\_fulltext\_database 'enable'  
GO

2. Tạo một full-text catalog:

CREATE FULLTEXT CATALOG DescFTSCatalog;

GO

Full-text catalog là thành phần logic để quản lý các chỉ mục full-text, xác định các word breakers và stemmers theo ngôn ngữ.

3. Định nghĩa một full-text index cho các cột chứa dữ liệu văn bản mà bạn muốn tìm:

CREATE FULLTEXT INDEX  
ON  
\[AdventureWorks2019\].\[Production\].\[ProductDescription\](\[Description\])  
KEY INDEX \[PK\_ProductDescription\_ProductDescriptionID\]  
ON DescFTSCatalog  
GO

4. Sử dụng AWS SCT và AWS Database Migration Service (AWS DMS) để chuyển cơ sở dữ liệu AdventureWorks 2019 từ SQL Server sang Amazon Aurora PostgreSQL. Trong bài, chúng tôi chuyển bảng Product Description.

PostgreSQL có vài lựa chọn để tìm kiếm trong văn bản: tìm chính xác, pattern matching, biểu thức chính quy và full-text search. Trong phần tiếp theo, chúng tôi hướng dẫn cách sử dụng FTS trong PostgreSQL trên database đã chuyển để đạt kết quả tương tự.

## **Full-text search trong PostgreSQL**

Toán tử LIKE, ILIKE và biểu thức chính quy được dùng trong mệnh đề WHERE cho tìm theo mẫu. Tuy nhiên, LIKE / ILIKE không hỗ trợ xếp hạng và thường bỏ qua các từ như “the”, “is”, v.v. PostgreSQL cung cấp FTS bằng cách sử dụng tsvector và tsquery, cùng các hàm, toán tử và tham số liên quan.

* tsvector: kiểu dữ liệu đại diện cho phiên bản đã xử lý của văn bản (tách từ, loại bỏ stop words, giảm về lexeme), tối ưu cho tìm kiếm text nhanh. Hàm to\_tsvector chuyển văn bản sang tsvector.

* tsquery: chứa một hoặc nhiều lexeme dùng để tìm. Lexeme có thể được kết hợp với các toán tử để tạo điều kiện tìm phức tạp. Hàm to\_tsquery hoặc plainto\_ts query chuyển truy vấn tìm kiếm sang tsquery.

Ví dụ: “He is running in the park” → các từ “he”, “run”, “park” sau khi loại bỏ stop words và stemming.

### **CONTAINS predicate với toán tử AND**

Truy vấn FTS đơn giản trong SQL Server sử dụng thuật ngữ [CONTAINS](https://learn.microsoft.com/en-us/sql/t-sql/queries/contains-transact-sql?view=sql-server-ver16) . CONTAINS Thuật ngữ này trong Transact-SQL cung cấp một cách linh hoạt để thực hiện FTS nâng cao trong cơ sở dữ liệu SQL Server. Nó hỗ trợ nhiều điều kiện tìm kiếm, tìm kiếm gần đúng, ký tự đại diện và các tính năng từ điển đồng nghĩa, cho phép bạn tùy chỉnh truy vấn để đáp ứng các yêu cầu cụ thể.

Trong truy vấn mẫu sau, thuật ngữ CONTAINS kiểm tra các từ “entry” và “level” trong cột Mô tả:

SELECT ProductDescriptionID,Description

FROM \[AdventureWorks2019\].\[Production\].\[ProductDescription\]

WHERE CONTAINS(\[Description\], 'entry & level');

![image14.jpg](image/image14.jpg)

### **Chứa vị ngữ với toán tử OR**

Điều này tương tự như trường hợp sử dụng trước đó sử dụng CONTAINS vị ngữ, ngoại trừ việc kiểm tra được thực hiện bằng OR toán tử. Trong truy vấn mẫu sau, vị ngữ kiểm tra "mục nhập", "mức" hoặc cả hai:

SELECT ProductDescriptionID,Description   
FROM \[AdventureWorks2019\].\[Production\].\[ProductDescription\]   
WHERE CONTAINS(\[Description\], 'entry | level');

Bạn có thể viết lại truy vấn trong PostgreSQL bằng cách sử dụng các hàm to\_tsvector và to\_tsquery như sau và sử dụng giá trị từ điển tìm kiếm văn bản tích hợp mặc định là pg\_catalog.simple *.*

![image12.jpg](image/image12.jpg)

### **Vị ngữ FREETEXT**

Thuật [FREETEXT](https://learn.microsoft.com/en-us/sql/t-sql/queries/freetext-transact-sql?view=sql-server-ver16) ngữ vị ngữ trong [Transact-SQL](https://learn.microsoft.com/en-us/sql/t-sql/language-reference?view=sql-server-ver16) (T-SQL) được sử dụng để thực hiện tìm kiếm toàn văn bản trong cơ sở dữ liệu SQL Server. Không giống như CONTAINS hàm, vốn yêu cầu các điều khoản và điều kiện cụ thể, thuật ngữ này FREETEXT cho phép tìm kiếm linh hoạt hơn và dựa trên ngôn ngữ tự nhiên.

Trong các truy vấn mẫu sau, FREETEXT hãy kiểm tra các từ “entry” hoặc “level” và dạng của chúng (sử dụng phép loại suy) trong cột Mô tả:

SELECT ProductDescriptionID, Description   
FROM \[AdventureWorks2019\].\[Production\].\[Product description\]   
WHERE FREETEXT(\[Description\], 'entry level');

Bạn có thể viết lại truy vấn trong PostgreSQL bằng các hàm to\_tsvector and  to\_tsquery như sau với giá trị cấu hình pg\_catalog.english. Cấu hình này sử dụng english\_stemand một từ điển đơn giản để chuyển đổi token thành lexeme. Do đó, lexeme đại diện cho một dạng chuẩn hóa của một từ hoặc token có thể được lập chỉ mục và sử dụng cho các thao tác tìm kiếm.

![image1.jpg](image/image1.jpg)

### **Hàm FREETEXTTABLE với RANK**

FTS trong SQL Server có thể tạo ra một điểm số (hoặc giá trị thứ hạng) tùy chọn, thể hiện mức độ liên quan của dữ liệu được trả về bởi truy vấn toàn văn. Giá trị thứ hạng này được tính toán trên mỗi hàng và có thể được sử dụng làm tiêu chí sắp xếp để sắp xếp tập kết quả của truy vấn theo mức độ liên quan. Giá trị thứ hạng chỉ hiển thị thứ tự liên quan tương đối của các hàng trong tập kết quả. Giá trị thực tế không quan trọng và thường khác nhau mỗi lần bạn chạy truy vấn. Giá trị thứ hạng không có ý nghĩa gì giữa các truy vấn.

Trong các truy vấn mẫu sau, [FREETEXTTABLE](https://learn.microsoft.com/en-us/sql/relational-databases/system-functions/freetexttable-transact-sql?view=sql-server-ver16) kiểm tra các từ “entry” hoặc “level” và dạng của chúng (sử dụng phép loại suy) trong cột Mô tả và cũng lấy thông tin RANK:

SELECT FT\_TBL.\[ProductDescriptionID\],FT\_TBL.\[Description\], KEY\_TBL.\[RANK\]

FROM \[AdventureWorks2019\].\[Production\].\[ProductDescription\] FT\_TBL

INNER JOIN FREETEXTTABLE(\[AdventureWorks2019\].\[Production\].\[ProductDescription\], \[Description\], 'entry OR level',1033) AS KEY\_TBL

      ON  FT\_TBL.\[ProductDescriptionID\] \=KEY\_TBL.\[KEY\]

ORDER BY KEY\_TBL.\[RANK\] DESC,FT\_TBL.\[ProductDescriptionID\];

Trong PostgreSQL, [ts\_rank](https://www.postgresql.org/docs/current/textsearch-controls.html#TEXTSEARCH-RANKING) hàm này được sử dụng để tính toán thứ hạng liên quan của kết quả tìm kiếm dựa trên mức độ khớp của chúng với một truy vấn cụ thể. Thứ hạng được tính toán bằng cách sử dụng một giá trị số biểu thị mức độ khớp của tài liệu với các thuật ngữ tìm kiếm trong truy vấn.

![image6.jpg](image/image6.jpg)


Hàm này [ts\_headline](https://www.postgresql.org/docs/current/textsearch-controls.html#TEXTSEARCH-HEADLINE)được sử dụng để tạo phiên bản tóm tắt văn bản của tài liệu, làm nổi bật các phần liên quan nhất khớp với truy vấn tìm kiếm cụ thể. Hàm này hữu ích để tạo các đoạn trích hoặc tiêu đề kết quả tìm kiếm, cung cấp ngữ cảnh cho người dùng về lý do tại sao một tài liệu nhất định được áp dụng cho tìm kiếm của họ. Ảnh chụp màn hình sau đây hiển thị kết quả của cột tiêu đề truy vấn PostgreSQL được tạo bằng hàm ts\_headline.

![image10.png](image/image10.png)![][image5]

### **Các hàm CONTAINSTABLE và FORMSOF với RANK**

**Hàm này [FORMSOF](https://learn.microsoft.com/en-us/previous-versions/office/developer/exchange-server-2003/aa123618\(v=exchg.65\)) trong SQL Server được sử dụng để thực hiện *tìm kiếm biến tố* . Tìm kiếm biến tố bao gồm việc tìm kiếm các dạng khác nhau của một từ, chẳng hạn như dạng số nhiều, thì động từ hoặc các dạng từ liên quan. Điều này có thể giúp bạn tìm thấy các tài liệu liên quan ngay cả khi chúng chứa các biến thể của thuật ngữ tìm kiếm, do đó cải thiện độ chính xác của tìm kiếm.**

**Trong các truy vấn mẫu sau, [CONTAINSTABLE](https://learn.microsoft.com/en-us/sql/relational-databases/system-functions/containstable-transact-sql?view=sql-server-ver16) kiểm tra từ “gear” và dạng của chúng (sử dụng INFLECTIONAL) trong cột Mô tả và cũng lấy RANK thông tin:**

**SELECT FT\_TBL.\[ProductDescriptionID\],FT\_TBL.\[Description\], KEY\_TBL.\[RANK\]**

**FROM \[AdventureWorks2019\].\[Production\].\[ProductDescription\] FT\_TBL**

    **INNER JOIN CONTAINSTABLE(\[AdventureWorks2019\].\[Production\].\[ProductDescription\],**

                             **\[Description\], 'FORMSOF(INFLECTIONAL,''gear'')',1033)**

**AS KEY\_TBL**

**ON FT\_TBL.\[ProductDescriptionID\] \= KEY\_TBL.\[KEY\]**

**ORDER BY KEY\_TBL.\[RANK\] DESC,FT\_TBL.\[ProductDescriptionID\];**

**Trong các truy vấn PostgreSQL, các cụm từ trước tiên được chia thành các từ hoặc mã thông báo, và các từ này được chuẩn hóa và phân loại thành các từ gốc (lexeme) bằng cách sử dụng pg\_catalog.english cấu hình FTS. Các lexeme này sẽ giống nhau cho các dạng khác nhau (phân loại) của một từ. Do đó, tính năng này sẽ tự động xử lý các tìm kiếm biến tố.**

| Máy chủ SQL |
| :---- |
| **SELECT FT\_TBL.\[ProductDescriptionID\],FT\_TBL.\[Description\], KEY\_TBL.\[RANK\]  FROM \[AdventureWorks2019\].\[Production\].\[ProductDescription\] FT\_TBL       INNER JOIN CONTAINSTABLE(\[AdventureWorks2019\].\[Production\].\[ProductDescription\],                   \[Description\], 'FORMSOF(INFLECTIONAL,''gear'')',1033) AS KEY\_TBL  ON FT\_TBL.\[ProductDescriptionID\] \= KEY\_TBL.\[KEY\]  ORDER BY KEY\_TBL.\[RANK\] DESC,FT\_TBL.\[ProductDescriptionID\]; ![image5.png](image/image5.png)![][image6]** |
| **PostgreSQL** |
| **SELECT p.productdescriptionid ,p.description,         ts\_rank(to\_tsvector('pg\_catalog.english',p.Description), query) AS rank,         ts\_headline('pg\_catalog.english',p.Description,query) headline  FROM production.productdescription p, to\_tsquery('pg\_catalog.english','gear') query  WHERE query @@ to\_tsvector('pg\_catalog.english',p.Description)  ORDER BY rank desc,p.productdescriptionid; ![image15.png](image/image15.png)

## **Cải thiện hiệu suất truy vấn trong PostgreSQL**

Đối với các truy vấn PostgreSQL mẫu được hiển thị trước đó, to\_tsvector hàm này lấy các tsvector giá trị từ cột Mô tả trong productdescription bảng. Trong các phần sau, chúng tôi sẽ giới thiệu cho bạn các tùy chọn khác nhau để cải thiện hiệu suất truy vấn.

### **Giải pháp 1: Sử dụng chỉ mục GIN**

Chỉ mục GIN (Generalized Inverted Index) trong PostgreSQL là một phương pháp lập chỉ mục phổ biến được sử dụng để tăng tốc hiệu quả việc tìm kiếm các kiểu dữ liệu phức tạp như JSON và tìm kiếm toàn văn bản. Chỉ mục cơ sở dữ liệu chuẩn, một cây B, được thiết kế để kiểm tra tính bằng nhau, trong khi GIN được thiết kế cho các mẫu tìm kiếm hoạt động trên các cấu trúc dữ liệu lồng nhau hoặc tổng hợp, cho phép các mẫu tìm kiếm biểu cảm hơn. Bằng cách lập chỉ mục các thành phần của các kiểu dữ liệu phức tạp riêng biệt, chỉ mục GIN cho phép truy vấn nhanh hơn trên các mảng, dữ liệu JSON và các thao tác tìm kiếm văn bản. Điều này khiến chỉ mục GIN trở thành một công cụ hữu ích để cải thiện hiệu suất của các truy vấn liên quan đến các cấu trúc dữ liệu phức tạp trong cơ sở dữ liệu PostgreSQL.

[Trong cách tiếp cận này, bạn tạo chỉ mục GIN](https://www.postgresql.org/docs/current/gin-intro.html) dựa trên biểu thức trên cột quan tâm trong bảng mô tả sản phẩm.

1. Chạy lệnh sau:

CREATE INDEX productdescription\_gin\_idx ON production.productdescription

2. USING GIN (to\_tsvector('pg\_catalog.english', Description));
3. Nếu bảng có hàng triệu hàng, bạn có thể tăng maintenance\_work\_mem tham số cấu hình ở cấp độ phiên để tăng tốc thời gian tạo chỉ mục. maintenance\_work\_mem chỉ định lượng bộ nhớ tối đa tính bằng MB sẽ được sử dụng cho các hoạt động bảo trì như tạo INDEX—theo mặc định (PostgreSQL), là 64 MB.
4. Chạy truy vấn EXPLAIN ANALYZE sau:

EXPLAIN ANALYZE

SELECT \* FROM production.productdescription

WHERE to\_tsvector('pg\_catalog.english', Description) @@ to\_tsquery('pg\_catalog.english','entry | level')

5. ORDER BY productdescriptionid DESC;

Đầu ra hiển thị quá trình quét chỉ mục bitmap đang được thực hiện trên productdescription\_gin\_index, giúp cải thiện hiệu suất truy vấn. Ảnh chụp màn hình sau đây cho thấy kế hoạch giải thích trước khi tạo chỉ mục.

![image13.png](image/image13.png)

Ảnh chụp màn hình sau đây cho thấy kế hoạch giải thích sau khi tạo chỉ mục.

![image7.png](image/image7.png)

Trong trường hợp này, chúng ta có thể thấy hiệu suất truy vấn được cải thiện khi sử dụng chỉ mục GIN. Mặc dù nhìn chung, việc sử dụng chỉ mục GIN cho tìm kiếm toàn văn trong PostgreSQL có thể giúp cải thiện hiệu suất, bạn cần lưu ý những đánh đổi khác về hiệu suất, bao gồm thời gian cần thiết để xây dựng chỉ mục và dung lượng lưu trữ bổ sung mà chỉ mục yêu cầu.

### **Giải pháp 2: Sử dụng cột được tạo đã lưu trữ**

Trong cách tiếp cận này, bạn tạo một cột tính toán description\_tsv chứa tsvector giá trị từ cột mô tả trong bảng theo sau là chỉ mục GIN trên cột tính toán.

1. Chạy các lệnh sau:

ALTER TABLE production.productdescription

ADD COLUMN description\_tsv tsvector

GENERATED ALWAYS AS (to\_tsvector('pg\_catalog.english',Description )) STORED;

2. CREATE INDEX productdescription\_gin\_idx ON production.productdescription USING GIN(description\_tsv);
3. Chạy truy vấn EXPLAIN ANALYZE mẫu sau:

EXPLAIN ANALYZE

SELECT \*

FROM production.productdescription

WHERE description\_tsv @@ to\_tsquery('pg\_catalog.english','entry | level')

4. ORDER BY productdescriptionid DESC;

Đầu ra cho thấy quá trình quét chỉ mục bitmap đang được thực hiện trên productdescription\_gin\_index , trong trường hợp này chứng minh sự cải thiện về hiệu suất truy vấn:

![image4.png](image/image4.png)

## **Tìm kiếm toàn văn bản trong PostgreSQL bằng tiện ích mở rộng pg\_trgm**

Trong PostgreSQL, pg\_trgm phần mở rộng này được triển khai cho các chức năng tìm kiếm văn bản sử dụng trigram. Trigram về cơ bản là tập hợp ba ký tự liên tiếp được trích xuất từ ​​một chuỗi cho trước. Bằng cách sử dụng trigram, người dùng có thể xác định sự tương đồng hoặc trùng khớp trong các mẫu văn bản bên trong chuỗi bằng cách so sánh số lượng trigram trùng khớp giữa các chuỗi, cùng với tham số ngưỡng tương đồng được xác định trước được thiết lập trước khi thực hiện tìm kiếm.

Tiện pg\_trgm ích mở rộng cung cấp các toán tử có thể được sử dụng để tạo chỉ mục trigram trên các cột văn bản trong bảng cần tìm kiếm. Chỉ mục này cho phép thực hiện các phép toán tương tự hiệu quả trên các cột được lập chỉ mục. Tiện ích mở rộng cung cấp ba phép toán tương tự: similarity (%), word\_similarity (\<%), và strict\_word\_similarity (\<\<%). Các tham số ngưỡng cho các phép toán tương ứng là pg\_trgm.similarity\_threshold, pg\_trgm.word\_similarity\_threshold, và pg\_trgm.strict\_word\_similarity\_threshold, có thể được đặt thành giá trị từ 0 (không tương tự) đến 1 (khớp hoàn hảo). Các hàm similarity(), word\_similarty(), và strict\_word\_similarity()được sử dụng để tính điểm tương tự. Bạn có thể sử dụng pg\_trgmnhư trong đoạn mã sau:

1. Chạy lệnh sau để tạo phần mở rộng pg\_trgm:  
   CREATE EXTENSION pg\_trgm;
2. Chạy lệnh sau để tạo chỉ mục GIN trên cột productdescription:
3. CREATE INDEX productdescription\_trgm\_idx ON production.productdescription USING GIN (Description gin\_trgm\_ops);
4. Chạy lệnh sau để đặt giá trị cấu hình similarity\_threshold thành 0,2. Tính năng similarity sẽ kiểm tra các trigram chung giữa hai chuỗi và trả về giá trị từ 0–1.

SET pg\_trgm.similarity\_threshold \= 0.2;

SET enable\_seqscan \= off;

SELECT productdescriptionid, Description, similarity(Description, 'entry level') AS sml

FROM production.product description

WHERE Description % 'entry level'

5. ORDER BY sml DESC, Description;
6. ![image9.png](image/image9.png)
7. Chạy lệnh sau để đặt giá trị cấu hình word\_similarity\_threshold thành 0,6. word\_similarity kiểm tra các trigram chung giữa các chuỗi ở cấp độ từ.

SET pg\_trgm.word\_similarity\_threshold \= 0.6;

SET enable\_seqscan \= off;

SELECT productdescriptionid, Description, word\_similarity('entry level', Description) AS sml

FROM production.productdescription

WHERE 'entry level' \<% Description

8. ORDER BY sml DESC, Description;
9. ![image11.png](image/image11.png)
10. Chạy lệnh sau để đặt giá trị cấu hình strict\_word\_similarity\_threshold thành 0,6. strict\_word\_similarity giống như word\_similarity nhưng nó chỉ xem xét các trigram chung khi cả hai từ giống hệt nhau.

SET pg\_trgm.strict\_word\_similarity\_threshold \= 0.6;

SET enable\_seqscan \= off;

SELECT productdescriptionid, Description, strict\_word\_similarity('aluminum cups and hollow axle', Description) AS sml

FROM production.productdescription

WHERE 'entry level' \<\<% Description

11. ORDER BY sml DESC, Description;
12. ![image8.png](image/image8.png)
13. Chạy lệnh sau để xóa chỉ mục và kích hoạt quét tuần tự:
14. DROP INDEX production.productdescription\_trgm\_idx;

## **Tìm kiếm toàn văn bản trong PostgreSQL bằng tiện ích mở rộng pg\_bigm**

Phần pg\_bigmmở rộng trong PostgreSQL tăng cường khả năng tìm kiếm toàn văn bản, đặc biệt đối với các ngôn ngữ có bộ ký tự phức tạp như ngôn ngữ châu Á.

Bigram là một nhóm hai ký tự liên tiếp được lấy từ một chuỗi. Phần mở rộng này sử dụng phương pháp lập chỉ mục bigram, bao gồm việc chia văn bản thành các cặp ký tự liên tiếp và xây dựng một chỉ mục dựa trên các bigram này. Phần *mở*pg\_bigm rộng cung cấp bigm\_similarity()hàm, toán tử tương tự bigm \= %và pg\_bigm.similarity\_limittham số ngưỡng. Bạn có thể sử dụng pg\_bigmnhư sau:

1. Chạy lệnh sau để tạo phần mở rộng pg\_bigm. Để biết hướng dẫn tạo phần mở rộng trong Amazon RDS for PostgreSQL, hãy tham khảo bài viết [Sử dụng phần mở rộng PostgreSQL với Amazon RDS for PostgreSQL](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.PostgreSQL.CommonDBATasks.Extensions.html) .
2. CREATE EXTENSION pg\_bigm;
3. Chạy lệnh sau để tạo chỉ mục GIN trên cột productdescription:
4. CREATE INDEX productdescription\_bigm\_idx ON production.productdescription USING gin (Description gin\_bigm\_ops);
5. Chạy lệnh sau để đặt giá trị cấu hình similarity\_limit thành 0,15. Kiểm tra tính tương đồng để tìm các bigram chung giữa hai chuỗi và trả về giá trị từ 0–1.

SET pg\_bigm.similarity\_limit TO 0.15;

SELECT \*,bigm\_similarity(Description, '%entry level%') rank1

FROM production.productdescription

WHERE Description \=% '%entry level%'

6. ORDER BY rank1 DESC;
7. ![image3.png](image/image3.png)
8. Chạy lệnh sau để xóa chỉ mục và bật quét tuần tự:

DROP INDEX production.productdescription\_bigm\_idx;

9. SET enable\_seqscan \= on;

## **Phần kết luận**

Trong bài viết này, chúng tôi đã hướng dẫn bạn cách di chuyển FTS từ SQL Server sang PostgreSQL và so sánh một số trường hợp sử dụng phổ biến. Việc di chuyển tìm kiếm toàn văn bản từ SQL Server sang PostgreSQL đòi hỏi phải viết lại mã thủ công. Để tìm hiểu thêm, vui lòng tham khảo các [hạn chế của tính năng tìm kiếm văn bản trong PostgreSQL](https://www.postgresql.org/docs/13/textsearch-limitations.html) . Chúng tôi cũng đã hướng dẫn bạn cách sử dụng các phần mở rộng pg\_trgm và pg\_bigm trong PostgreSQL để triển khai FTS.

###

**Về các tác giả**

![image2.jpg](image/image2.jpg)![][image15]
