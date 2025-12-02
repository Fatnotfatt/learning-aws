---
title: "Worklog Tuần 6"
date: 2025-10-13
weight: 1
chapter: false
pre: " <b> 1.6. </b> "
---

### Mục tiêu tuần 6:

- Ôn tập lại các khái niệm cơ bản về **Database**: mô hình quan hệ, khóa chính/khóa ngoại, ACID, chuẩn hóa, OLTP vs OLAP.
- Hiểu **Amazon RDS** như một dịch vụ quản lý cơ sở dữ liệu quan hệ trên AWS: engines, Multi-AZ, read replicas, backup, và scaling.
- Tìm hiểu lợi ích của **Amazon Aurora** so với các engine RDS tiêu chuẩn: hiệu năng, tính sẵn sàng cao, tự động mở rộng storage, tương thích MySQL/PostgreSQL.
- Làm quen với **Amazon Redshift** như một **data warehouse** quy mô petabyte cho phân tích, và phân biệt nó với RDS (OLTP workloads).
- Học cách **Amazon ElastiCache** (Redis / Memcached) cung cấp lớp cache trong bộ nhớ để giảm độ trễ và giảm tải cho cơ sở dữ liệu backend.
- Thực hành **Database Schema Conversion & Migration** sử dụng **AWS DMS** và **AWS Schema Conversion Tool (SCT)** để di chuyển cơ sở dữ liệu lên AWS.

---

### Các công việc trong tuần:

| Ngày | Công việc                                                                                                                                                                                                                                                                                                                                                                                                                                       | Ngày bắt đầu | Ngày hoàn thành | Tài liệu tham khảo                                                                                                               |
| ---- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ | --------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| 2    | - Ôn tập **Database Concepts** (Module 06-01): mô hình quan hệ, ACID, transactions, indexing, normalization, OLTP vs OLAP. <br> - Ánh xạ khái niệm cơ sở dữ liệu on-premises truyền thống sang dịch vụ đám mây AWS.                                                                                                                                                                                                                             | 13/10/2025   | 13/10/2025      | [Tài liệu lớp học – Module 06-01](https://www.youtube.com/watch?v=OOD2RwWuLRw&list=PLahN4TLWtox2a3vElknwzU_urND8hLn1i&index=217) |
| 3    | - Học lý thuyết về **Amazon RDS & Amazon Aurora** (Module 06-02). <br> - Tìm hiểu về các engines được hỗ trợ, Multi-AZ, automated backups, snapshots, read replicas, và scaling. <br> - So sánh RDS vs Aurora về hiệu năng, tính sẵn sàng, và chi phí.                                                                                                                                                                                          | 14/10/2025   | 14/10/2025      | https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html, https://aws.amazon.com/rds/aurora/                          |
| 4    | - Học về **Amazon Redshift & Amazon ElastiCache** (Module 06-03). <br> - Phân biệt OLTP (RDS/Aurora) vs OLAP (Redshift) và lớp cache trong bộ nhớ (ElastiCache). <br> - Khám phá các use case phổ biến: data warehouse & BI, caching sessions, leaderboard, rate limiting, v.v.                                                                                                                                                                 | 15/10/2025   | 15/10/2025      | https://aws.amazon.com/redshift/, https://aws.amazon.com/elasticache/                                                            |
| 5    | - **Thực hành Lab:** _Module 06-Lab 5 – Amazon Relational Database Service (Amazon RDS)._ <br> + Tạo RDS instance, cấu hình security group, parameter group, backups. <br> + Kết nối từ client, chạy queries, và kiểm tra behavior (ví dụ: failover/Multi-AZ nếu có trong lab).                                                                                                                                                                 | 16/10/2025   | 16/10/2025      | https://000005.awsstudygroup.com/                                                                                                |
| 6    | - **Thực hành Lab:** _Module 06-Lab 43 – Database Schema Conversion & Migration._ <br> + Sử dụng **AWS Schema Conversion Tool (SCT)** để phân tích và chuyển đổi schema từ source DB sang target RDS/Aurora/Redshift. <br> + Sử dụng **AWS Database Migration Service (DMS)** để di chuyển dữ liệu (full load và change data capture nếu được hỗ trợ trong lab). <br> - Tóm tắt và ôn tập tất cả **AWS Database Services** đã học trong tuần 6. | 17/10/2025   | 17/10/2025      | https://000043.awsstudygroup.com/                                                                                                |

---

### Kết quả đạt được trong tuần 6:

- Củng cố hiểu biết về **các khái niệm cơ sở dữ liệu cốt lõi**:

  - Bảng quan hệ, khóa chính/khóa ngoại, tính toàn vẹn quan hệ, và indexing cơ bản.
  - Các thuộc tính ACID của transactions và tại sao chúng quan trọng trong OLTP workloads.
  - Phân biệt rõ ràng giữa **OLTP vs OLAP** và cách ánh xạ này sang các dịch vụ AWS.

- Làm quen thực tế với **Amazon RDS**:

  - Tạo và quản lý RDS instances qua AWS Management Console.
  - Xem xét các engines được hỗ trợ (MySQL, PostgreSQL, MariaDB, Oracle, SQL Server, Aurora) và các use case điển hình của chúng.
  - Thực hành cấu hình Multi-AZ, automated backups, snapshots, monitoring, và các tùy chọn scaling cơ bản.

- Hiểu điểm mạnh của **Amazon Aurora**:

  - Aurora như một cơ sở dữ liệu cloud-native, tương thích MySQL/PostgreSQL với hiệu năng cải thiện đáng kể so với các engine tiêu chuẩn.
  - Kiến trúc Aurora DB cluster, với lớp storage phân tán trên nhiều AZs.
  - Reader và writer endpoints, tự động mở rộng storage, và thiết kế tính sẵn sàng cao.

- Xây dựng bức tranh tổng thể về **Amazon Redshift & ElastiCache**:

  - Redshift như một data warehouse cột, quy mô petabyte được tối ưu cho analytics và BI workloads.
  - Cách Redshift khác với RDS/Aurora: được tối ưu cho các truy vấn phức tạp trên dataset lớn thay vì transactional workloads.
  - ElastiCache (Redis/Memcached) như một lớp cache trong bộ nhớ được quản lý đầy đủ, độ trễ thấp để tăng throughput và giảm tải cho cơ sở dữ liệu backend.

- Hoàn thành các lab chính của tuần:

  - **Module 06-Lab 5 – Amazon RDS**:
    - Triển khai RDS instance, kết nối từ client, thực thi các SQL queries cơ bản.
    - Quan sát tác động của các thay đổi cấu hình (instance class, storage, backup settings) lên behavior và quản lý.
  - **Module 06-Lab 43 – Database Schema Conversion & Migration**:
    - Sử dụng **AWS Schema Conversion Tool (SCT)** để đánh giá và chuyển đổi schemas, xác định những gì có thể tự động chuyển đổi vs những gì cần điều chỉnh thủ công.
    - Sử dụng **AWS Database Migration Service (DMS)** để di chuyển dữ liệu từ source database sang các target RDS/Aurora/Redshift theo kịch bản lab.

- Sau tuần 6, thiết lập mô hình tinh thần rõ ràng về hệ sinh thái cơ sở dữ liệu AWS:
  - Từ **các khái niệm cơ sở dữ liệu truyền thống** → **RDS/Aurora cho OLTP** → **Redshift cho OLAP** → **ElastiCache cho caching** → **DMS/SCT cho migration**, sẵn sàng áp dụng trong các kiến trúc thực tế.
