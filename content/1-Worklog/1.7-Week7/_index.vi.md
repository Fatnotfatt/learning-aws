---
title: "Worklog Tuần 7"
date: 2025-10-20
weight: 7
chapter: false
pre: " <b> 1.7. </b> "
---

### Mục tiêu tuần 7:

- Hiểu **Amazon DynamoDB** như một dịch vụ cơ sở dữ liệu NoSQL được quản lý hoàn toàn: mô hình dữ liệu key-value và document, partition keys, sort keys, global secondary indexes (GSI), và các chế độ dung lượng on-demand vs provisioned.
- Học cách xây dựng và quản lý **Data Lakes trên AWS** sử dụng các dịch vụ như Amazon S3, AWS Glue, Amazon Athena, và Amazon QuickSight cho các workload phân tích.
- Khám phá **các dịch vụ Analytics của AWS**: Amazon Athena cho truy vấn SQL serverless trên S3, AWS Glue cho các thao tác ETL, và Amazon QuickSight cho business intelligence và visualization.
- Thực hành các quy trình ingestion, transformation, và phân tích dữ liệu trong môi trường đám mây AWS.
- Hiểu các chiến lược tối ưu hóa chi phí và hiệu năng cho analytics workloads trên AWS.

---

### Các công việc trong tuần:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Tài liệu tham khảo |
| ---- | --------- | ------------ | --------------- | ------------------ |
| 2 | - **Thực hành Lab:** _Data Lake on AWS._ <br>   + Hiểu kiến trúc data lake trên AWS sử dụng S3 làm lớp lưu trữ data lake. <br>   + Học về các mẫu ingestion, cataloging, và querying dữ liệu. <br>   + Khám phá tích hợp giữa S3, Glue, và Athena cho analytics. | 20/10/2025 | 20/10/2025 | https://000035.awsstudygroup.com/ |
| 3 | - **Thực hành Lab:** _Amazon DynamoDB Immersion Day._ <br>   + Đi sâu vào các khái niệm cốt lõi của DynamoDB: tables, items, attributes, primary keys, và indexes. <br>   + Thực hành tạo tables, chèn dữ liệu, và query với partition keys và sort keys. <br>   + Hiểu các chế độ dung lượng DynamoDB (on-demand vs provisioned) và mô hình định giá. | 21/10/2025 | 21/10/2025 | https://000039.awsstudygroup.com/ |
| 4 | - **Thực hành Lab:** _Cost and performance analysis with AWS Glue and Amazon Athena._ <br>   + Sử dụng AWS Glue để catalog dữ liệu lưu trữ trong S3 và tạo data catalogs. <br>   + Chạy các truy vấn SQL trên dữ liệu S3 sử dụng Amazon Athena. <br>   + Phân tích tác động chi phí và tối ưu hóa hiệu năng truy vấn. <br>   + Hiểu các chiến lược phân vùng cho analytics hiệu quả về chi phí. | 22/10/2025 | 22/10/2025 | https://000040.awsstudygroup.com/ |
| 5 | - **Thực hành Lab:** _Work with Amazon DynamoDB._ <br>   + Tạo DynamoDB tables với key schemas phù hợp. <br>   + Thực hiện các thao tác CRUD (Create, Read, Update, Delete) trên DynamoDB items. <br>   + Làm việc với Global Secondary Indexes (GSI) và Local Secondary Indexes (LSI). <br>   + Thực hành các thao tác querying và scanning, hiểu sự khác biệt. | 23/10/2025 | 23/10/2025 | https://000060.awsstudygroup.com/ |
| 6 | - **Thực hành Lab:** _Building a Datalake with Your Data._ <br>   + Xây dựng giải pháp data lake hoàn chỉnh sử dụng các dịch vụ AWS. <br>   + Triển khai các pipeline ingestion dữ liệu. <br>   + Thiết lập các workflow transformation dữ liệu với AWS Glue. <br>   + Tạo datasets sẵn sàng cho analytics để tiêu thụ downstream. | 24/10/2025 | 24/10/2025 | https://000070.awsstudygroup.com/ |
| 7 | - **Thực hành Lab:** _Analytics on AWS workshop._ <br>   + Workshop toàn diện bao gồm toàn bộ analytics stack trên AWS. <br>   + Tích hợp nhiều dịch vụ: S3, Glue, Athena, và các công cụ visualization. <br>   + Xây dựng các giải pháp analytics end-to-end từ dữ liệu thô đến insights. | 25/10/2025 | 25/10/2025 | https://000072.awsstudygroup.com/ |
| 8 | - **Thực hành Lab:** _Get started with QuickSight._ <br>   + Tạo visualizations và dashboards sử dụng Amazon QuickSight. <br>   + Kết nối QuickSight với các nguồn dữ liệu khác nhau (S3, Athena, RDS, v.v.). <br>   + Xây dựng các báo cáo tương tác và chia sẻ insights với các bên liên quan. <br> - Tóm tắt và ôn tập tất cả **AWS Analytics and Data Lake Services** đã học trong tuần 7. | 26/10/2025 | 26/10/2025 | https://000073.awsstudygroup.com/ |

---

### Kết quả đạt được trong tuần 7:

- Hiểu toàn diện về **Amazon DynamoDB**:

  - DynamoDB như một dịch vụ cơ sở dữ liệu NoSQL được quản lý hoàn toàn, serverless với độ trễ millisecond đơn lẻ.
  - Các khái niệm chính: tables, items, attributes, primary keys (partition key + sort key tùy chọn), và best practices về data modeling.
  - Global Secondary Indexes (GSI) và Local Secondary Indexes (LSI) cho các mẫu truy vấn linh hoạt.
  - Chế độ dung lượng: on-demand (trả theo yêu cầu) vs provisioned (dung lượng dự trữ) và khi nào sử dụng mỗi loại.
  - DynamoDB Streams cho xử lý dữ liệu real-time và change data capture.

- Xây dựng kinh nghiệm thực tế với **kiến trúc Data Lake trên AWS**:

  - Amazon S3 làm nền tảng cho lưu trữ data lake với lifecycle policies, versioning, và encryption.
  - Các mẫu kiến trúc data lake: raw zone, processed zone, và curated zone.
  - Chiến lược ingestion dữ liệu: batch uploads, streaming data, và tích hợp với các nguồn dữ liệu khác nhau.
  - Best practices cho tổ chức dữ liệu trong S3: partitioning, naming conventions, và cấu trúc thư mục.

- Thành thạo **các dịch vụ Analytics của AWS**:

  - **AWS Glue**: Dịch vụ ETL serverless để khám phá, catalog, và transform dữ liệu.
    - Glue Data Catalog như một kho lưu trữ metadata tập trung.
    - Glue ETL jobs cho data transformation sử dụng Apache Spark.
    - Glue Crawlers cho automatic schema discovery.
  - **Amazon Athena**: Dịch vụ truy vấn SQL tương tác serverless để phân tích dữ liệu trong S3.
    - Mô hình định giá trả theo truy vấn và chiến lược tối ưu hóa chi phí.
    - Tích hợp với Glue Data Catalog cho schema-on-read queries.
    - Tối ưu hóa hiệu năng truy vấn thông qua partitioning và định dạng cột (Parquet, ORC).
  - **Amazon QuickSight**: Dịch vụ business intelligence và visualization cloud-native.
    - Tạo dashboards, visualizations, và reports.
    - Kết nối với các nguồn dữ liệu khác nhau (S3, Athena, RDS, Redshift, v.v.).
    - Chia sẻ insights với teams và embedding analytics trong applications.

- Hoàn thành các phiên thực hành lab toàn diện:

  - **Data Lake on AWS (Lab 35)**: Xây dựng hiểu biết nền tảng về kiến trúc data lake và các mẫu lưu trữ dựa trên S3.
  - **Amazon DynamoDB Immersion Day (Lab 39)**: Đi sâu vào các thao tác DynamoDB, data modeling, và best practices.
  - **Cost and performance analysis with AWS Glue and Amazon Athena (Lab 40)**: Học cách tối ưu hóa analytics workloads cho chi phí và hiệu năng.
  - **Work with Amazon DynamoDB (Lab 60)**: Thực hành các thao tác CRUD, chiến lược indexing, và query patterns.
  - **Building a Datalake with Your Data (Lab 70)**: Triển khai giải pháp data lake end-to-end với ingestion và transformation pipelines.
  - **Analytics on AWS workshop (Lab 72)**: Workshop toàn diện tích hợp nhiều dịch vụ analytics.
  - **Get started with QuickSight (Lab 73)**: Tạo visualizations và dashboards cho business intelligence.

- Sau tuần 7, thiết lập hiểu biết hoàn chỉnh về hệ sinh thái AWS Analytics và Data Lake:
  - Từ **NoSQL databases (DynamoDB)** → **Data Lake storage (S3)** → **ETL và cataloging (Glue)** → **Query và analysis (Athena)** → **Visualization (QuickSight)**, sẵn sàng thiết kế và triển khai các giải pháp analytics hiện đại trên AWS.
