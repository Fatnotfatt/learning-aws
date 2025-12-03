---
title: "Worklog Tuần 9"
date: 2025-11-02
weight: 1
chapter: false
pre: " <b> 1.9. </b> "
---

### Mục tiêu tuần 9:

- Xây dựng **VPC và Networking Core**: Tạo VPC với public và private subnets, Internet Gateway, và NAT Gateway.
- Thiết lập ranh giới mạng an toàn với routing và subnet segmentation phù hợp.
- Cấu hình **Security Groups** cho EC2, RDS, và ALB theo nguyên tắc least-privilege.
- Thiết lập **IAM roles và policies** cho EC2 instances với custom permissions.
- Bật **VPC Flow Logs** cho network traffic monitoring và auditing.

---

### Các công việc trong tuần:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Tài liệu tham khảo |
| ---- | --------- | ------------ | --------------- | ------------------ |
| 7 | - **Tạo VPC & Cấu hình Subnet:** <br> + Tạo VPC với CIDR block 10.0.0.0/16 trong AWS region đã chọn. <br> + Tạo public subnet (10.0.1.0/24) trong một Availability Zone với tags phù hợp. <br> + Tạo private subnet (10.0.2.0/24) trong cùng Availability Zone với tags phù hợp. <br> + Áp dụng tagging strategy nhất quán (Name, Environment, Project, v.v.) cho tất cả resources. <br> + Tài liệu hóa subnet allocation và IP addressing scheme. | 02/11/2025 | 02/11/2025 | Tài liệu AWS VPC |
| 8 | - **Thiết lập Internet Gateway:** <br> + Tạo và gắn Internet Gateway vào VPC. <br> + Cấu hình public subnet route table để route internet-bound traffic (0.0.0.0/0) đến Internet Gateway. <br> + Xác minh cấu hình public subnet route table. <br> + Kiểm tra internet connectivity từ public subnet (launch test EC2 instance nếu cần). <br> + Tài liệu hóa routing configuration và gateway associations. | 03/11/2025 | 03/11/2025 | Hướng dẫn Internet Gateway |
| 9 | - **Cấu hình NAT Gateway:** <br> + Cấp phát Elastic IP address cho NAT Gateway. <br> + Tạo NAT Gateway trong public subnet (10.0.1.0/24). <br> + Cấu hình private subnet route table để route internet-bound traffic (0.0.0.0/0) qua NAT Gateway. <br> + Xác minh cấu hình private subnet route table. <br> + Kiểm tra outbound internet connectivity từ private subnet (launch test EC2 instance trong private subnet). <br> + Xác minh private subnet instances có thể truy cập internet trong khi vẫn bị cô lập khỏi inbound connections. | 04/11/2025 | 04/11/2025 | Tài liệu NAT Gateway |
| 10 | - **Thiết kế & Triển khai Security Groups:** <br> + Tạo Security Group cho EC2 instances: cho phép inbound từ API Gateway/ALB, outbound đến RDS và internet qua NAT. <br> + Tạo Security Group cho RDS: chỉ cho phép inbound từ EC2 Security Group trên database port (3306/5432). <br> + Tạo Security Group cho ALB (nếu sử dụng): cho phép inbound HTTP/HTTPS từ internet, outbound đến EC2 Security Group. <br> + Áp dụng nguyên tắc least-privilege: cấp minimum permissions cần thiết. <br> + Tài liệu hóa security group rules và relationships. | 05/11/2025 | 05/11/2025 | Hướng dẫn Security Groups |
| 11 | - **IAM Roles & Policies cho EC2:** <br> + Tạo IAM role cho EC2 instances với tên mô tả. <br> + Tạo custom IAM policy cho EC2 để truy cập các AWS services cần thiết (S3, Secrets Manager, CloudWatch, v.v.). <br> + Gắn IAM role vào EC2 instance profile. <br> + Kiểm tra IAM role permissions từ EC2 instance (sử dụng AWS CLI hoặc SDK). <br> + Xác minh EC2 có thể truy cập Secrets Manager để retrieve database credentials. <br> + Tài liệu hóa IAM roles và permissions của chúng. | 06/11/2025 | 06/11/2025 | IAM best practices |
| 12 | - **Network ACLs & VPC Flow Logs:** <br> + Xem xét và cấu hình Network ACLs (tùy chọn, default ACLs thường đủ). <br> + Kiểm tra Network ACL rules nếu custom rules được triển khai. <br> + Bật VPC Flow Logs để capture IP traffic flow information. <br> + Cấu hình Flow Logs destination (CloudWatch Logs hoặc S3 bucket). <br> + Xem xét Flow Logs để audit network traffic patterns. <br> + Audit và tài liệu hóa tất cả cấu hình mạng cho security review. <br> - **Tóm tắt tuần 9:** VPC và networking core hoàn tất, sẵn sàng cho backend và database deployment trong tuần 10. | 07/11/2025 | 07/11/2025 | Tài liệu VPC Flow Logs |

---

### Kết quả đạt được trong tuần 9:

- Tạo thành công **VPC và subnet infrastructure**:

  - Tạo VPC với CIDR block 10.0.0.0/16 trong AWS region đã chọn.
  - Cấu hình public subnet (10.0.1.0/24) cho internet-facing resources với tagging phù hợp.
  - Cấu hình private subnet (10.0.2.0/24) cho application servers với tagging phù hợp.
  - Áp dụng tagging strategy nhất quán trên tất cả network resources để quản lý tốt hơn.

- Thiết lập **Internet Gateway** cho public subnet connectivity:

  - Tạo và gắn Internet Gateway vào VPC.
  - Cấu hình public subnet route table để route internet traffic (0.0.0.0/0) đến Internet Gateway.
  - Xác minh public subnet instances có thể truy cập internet trực tiếp.
  - Tài liệu hóa routing configuration và gateway associations.

- Cấu hình **NAT Gateway** cho private subnet outbound access:

  - Cấp phát Elastic IP address và tạo NAT Gateway trong public subnet.
  - Cấu hình private subnet route table để route internet traffic qua NAT Gateway.
  - Xác minh private subnet instances có thể truy cập internet cho outbound connections (updates, downloads, API calls).
  - Xác nhận private subnet vẫn bị cô lập khỏi inbound internet connections (security best practice).

- Triển khai **Security Groups** theo nguyên tắc least-privilege:

  - Tạo Security Group cho EC2: cho phép inbound từ API Gateway/ALB, outbound đến RDS và internet.
  - Tạo Security Group cho RDS: chỉ cho phép inbound từ EC2 Security Group trên database port.
  - Tạo Security Group cho ALB (nếu sử dụng): cho phép inbound HTTP/HTTPS, outbound đến EC2.
  - Áp dụng nguyên tắc least-privilege: cấp minimum permissions cần thiết cho mỗi component.
  - Tài liệu hóa security group rules và relationships cho maintainability.

- Cấu hình **IAM roles và policies** cho EC2:

  - Tạo IAM role cho EC2 instances với naming mô tả.
  - Tạo custom IAM policy cho EC2 để truy cập các AWS services cần thiết (S3, Secrets Manager, CloudWatch).
  - Gắn IAM role vào EC2 instance profile.
  - Kiểm tra IAM permissions từ EC2 instance và xác minh truy cập Secrets Manager.
  - Tài liệu hóa IAM roles và permissions cho security audit.

- Bật **VPC Flow Logs** cho network monitoring:

  - Bật VPC Flow Logs để capture IP traffic flow information.
  - Cấu hình Flow Logs destination (CloudWatch Logs hoặc S3 bucket).
  - Xem xét Flow Logs để audit network traffic patterns và xác định anomalies.
  - Audit tất cả cấu hình mạng cho security compliance.

- Sau tuần 9, VPC và networking core infrastructure đã hoàn tất với secure network boundaries, proper routing, và monitoring capabilities. Hệ thống sẵn sàng cho backend và database deployment trong tuần 10.
