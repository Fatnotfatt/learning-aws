---
title: "Worklog Tuần 10"
date: 2025-11-09
weight: 1
chapter: false
pre: " <b> 1.10. </b> "
---

### Mục tiêu tuần 10:

- Triển khai **Backend Layer**: EC2 instances trong private subnet với application runtime và cấu hình Auto Scaling.
- Thiết lập **Amazon RDS** database trong private subnet với cấu hình và parameter groups phù hợp.
- Deploy backend application và thiết lập kết nối giữa EC2 và RDS sử dụng Secrets Manager.
- Cấu hình **API Gateway** REST API với tích hợp EC2 backend.
- Tích hợp **Amazon Cognito** User Pool với API Gateway cho authentication và authorization.
- Cấu hình **Auto Scaling Group** cho EC2 instances với Launch Template cho scalability.

---

### Các công việc trong tuần:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Tài liệu tham khảo |
| ---- | --------- | ------------ | --------------- | ------------------ |
| 13 | - **Thiết lập RDS Database:** <br> + Tạo RDS subnet group bao phủ private subnet (10.0.2.0/24). <br> + Launch RDS instance (MySQL/PostgreSQL) trong private subnet với instance class phù hợp. <br> + Cấu hình RDS parameter group với database-specific settings (character set, timezone, v.v.). <br> + Thiết lập automated backups, encryption at rest, và Multi-AZ deployment (tùy chọn cho cost optimization). <br> + Cấu hình RDS security group để chỉ cho phép kết nối từ EC2 Security Group. <br> + Lưu trữ database credentials ban đầu trong AWS Secrets Manager. | 09/11/2025 | 09/11/2025 | Tài liệu RDS |
| 14 | - **Thiết lập EC2 Backend Instance:** <br> + Launch EC2 instance trong private subnet (10.0.2.0/24) với instance type phù hợp. <br> + Cài đặt application runtime environment: Java/Python/Node.js dựa trên yêu cầu application. <br> + Cài đặt và cấu hình application dependencies và libraries. <br> + Cấu hình EC2 instance với IAM role (đã tạo trong tuần 9) cho AWS service access. <br> + Tạo base AMI từ EC2 instance đã cấu hình cho Auto Scaling Group (sẽ sử dụng ở Ngày 18). <br> + Tài liệu hóa cấu hình EC2 và application setup steps. | 10/11/2025 | 10/11/2025 | Tài liệu EC2 |
| 15 | - **Deployment Backend Application:** <br> + Deploy backend application code lên EC2 instance (manual deployment cho initial setup). <br> + Cấu hình application để kết nối với RDS database sử dụng credentials từ Secrets Manager. <br> + Kiểm tra database connectivity từ EC2 instance (xác minh connection string, credentials retrieval). <br> + Cấu hình application environment variables và configuration files. <br> + Kiểm tra basic application functionality và database operations (CRUD operations). <br> + Tài liệu hóa deployment process và application configuration. | 11/11/2025 | 11/11/2025 | Hướng dẫn deployment |
| 16 | - **Cấu hình API Gateway REST API:** <br> + Tạo REST API trong API Gateway với tên và mô tả phù hợp. <br> + Định nghĩa API resources và methods (GET, POST, PUT, DELETE) dựa trên yêu cầu application. <br> + Cấu hình API Gateway integration với EC2 backend (HTTP/HTTPS integration hoặc VPC Link cho private resources). <br> + Thiết lập API Gateway VPC Link để kết nối với private subnet resources (EC2). <br> + Bật CORS cho frontend access (cấu hình CORS headers: Access-Control-Allow-Origin, v.v.). <br> + Kiểm tra API endpoints và xác minh tích hợp với EC2 backend. | 12/11/2025 | 12/11/2025 | Tài liệu API Gateway |
| 17 | - **Tích hợp Amazon Cognito:** <br> + Tạo Cognito User Pool cho user authentication với tên phù hợp. <br> + Cấu hình user pool settings: password policies (minimum length, complexity), MFA (tùy chọn), email verification. <br> + Tạo Cognito User Pool App Client cho application integration. <br> + Cấu hình Cognito Authorizer trong API Gateway cho authenticated API access. <br> + Kiểm tra user registration flow: tạo test user trong Cognito User Pool. <br> + Kiểm tra login flow: authenticate user và obtain JWT tokens. <br> + Kiểm tra authenticated API access: sử dụng JWT token để truy cập protected API endpoints. | 13/11/2025 | 13/11/2025 | Tài liệu Cognito |
| 18 | - **Cấu hình Auto Scaling Group:** <br> + Tạo Launch Template dựa trên base AMI đã tạo ở Ngày 14. <br> + Cấu hình Launch Template với instance type, security groups, IAM role, và user data scripts. <br> + Tạo Auto Scaling Group với Launch Template trong private subnet. <br> + Cấu hình Auto Scaling policies: target tracking (CPU utilization, network in/out), step scaling, hoặc scheduled scaling. <br> + Thiết lập minimum, desired, và maximum capacity cho Auto Scaling Group. <br> + Kiểm tra scale-out: trigger scaling bằng cách tăng load (hoặc manually adjust desired capacity). <br> + Kiểm tra scale-in: giảm load và xác minh instances được terminate tự động. <br> - **Tóm tắt tuần 10:** Backend và database layer hoàn tất, sẵn sàng cho CI/CD và monitoring setup trong tuần 11. | 14/11/2025 | 14/11/2025 | Tài liệu Auto Scaling |

---

### Kết quả đạt được trong tuần 10:

- Triển khai thành công **Amazon RDS database**:

  - Tạo RDS subnet group trong private subnet để cô lập database.
  - Launch RDS instance (MySQL/PostgreSQL) với instance class và cấu hình phù hợp.
  - Cấu hình RDS parameter group với database-specific settings.
  - Thiết lập automated backups, encryption at rest, và monitoring.
  - Cấu hình RDS security group để chỉ cho phép kết nối từ EC2 Security Group.
  - Lưu trữ database credentials an toàn trong AWS Secrets Manager.

- Thiết lập **EC2 backend infrastructure**:

  - Launch EC2 instance trong private subnet với instance type phù hợp.
  - Cài đặt và cấu hình application runtime environment (Java/Python/Node.js).
  - Cấu hình EC2 instance với IAM role cho AWS service access.
  - Tạo base AMI từ EC2 instance đã cấu hình cho Auto Scaling Group.
  - Tài liệu hóa cấu hình EC2 và application setup procedures.

- Deploy **backend application**:

  - Deploy backend application code lên EC2 instance.
  - Cấu hình application để kết nối với RDS sử dụng credentials từ Secrets Manager.
  - Kiểm tra database connectivity và xác minh connection functionality.
  - Kiểm tra basic application functionality và database operations (CRUD).
  - Tài liệu hóa deployment process và application configuration.

- Cấu hình **API Gateway REST API**:

  - Tạo REST API với resources, methods, và integration points.
  - Thiết lập API Gateway VPC Link để kết nối với private subnet resources (EC2).
  - Cấu hình API Gateway integration với EC2 backend sử dụng HTTP/HTTPS.
  - Bật CORS cho frontend access với proper headers.
  - Kiểm tra API endpoints và xác minh tích hợp với EC2 backend.

- Tích hợp **Amazon Cognito** cho authentication:

  - Tạo Cognito User Pool với password policies, MFA, và email verification.
  - Tạo Cognito User Pool App Client cho application integration.
  - Cấu hình Cognito Authorizer trong API Gateway cho authenticated API access.
  - Kiểm tra user registration, login, và authenticated API access flows.
  - Thiết lập secure user authentication và authorization.

- Cấu hình **Auto Scaling Group** cho scalability:

  - Tạo Launch Template dựa trên base AMI cho consistent instance configuration.
  - Tạo Auto Scaling Group với Launch Template trong private subnet.
  - Cấu hình Auto Scaling policies (target tracking, step scaling) cho automatic scaling.
  - Thiết lập capacity limits phù hợp (minimum, desired, maximum).
  - Kiểm tra scale-out và scale-in functionality để xác minh automatic scaling.

- Sau tuần 10, backend và database layer đã hoạt động với scalable infrastructure. Application sẵn sàng cho CI/CD automation và comprehensive monitoring trong tuần 11.
