---
title: "Worklog Tuần 8"
date: 2025-10-26
weight: 8
chapter: false
pre: " <b> 1.8. </b> "
---

### Mục tiêu tuần 8:

- Hoàn thiện **Edge Layer** và **Frontend Storage**: Route 53, S3, CloudFront, AWS WAF, và ACM Certificate.
- Thiết lập quản lý DNS với Route 53 hosted zone và cấu hình domain.
- Cấu hình S3 bucket cho static frontend hosting với access policies phù hợp.
- Triển khai CloudFront distribution cho global content delivery với Origin Access Control.
- Triển khai AWS WAF protection với các quy tắc bảo mật (SQL injection, XSS, bot control).
- Thiết lập ACM Certificate và bật HTTPS cho secure content delivery.

---

### Các công việc trong tuần:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Tài liệu tham khảo |
| ---- | --------- | ------------ | --------------- | ------------------ |
| 1 | - **Phân tích Yêu cầu Hệ thống & Thiết kế Kiến trúc:** <br> + Phân tích yêu cầu hệ thống và xem xét sơ đồ kiến trúc hoàn chỉnh. <br> + Xác định tất cả các thành phần: Route 53, S3, CloudFront, WAF, ACM, VPC, EC2, RDS, API Gateway. <br> + Tạo tài liệu High-Level Design (HLD) với tổng quan kiến trúc. <br> + Tài liệu hóa data flow: Users → Route 53 → CloudFront → WAF → S3 (Frontend). <br> + Lập kế hoạch IP addressing scheme và resource naming conventions. | 26/10/2025 | 26/10/2025 | Sơ đồ kiến trúc |
| 2 | - **Thiết lập Route 53:** <br> + Tạo Route 53 hosted zone cho quản lý domain. <br> + Tạo A record trỏ đến CloudFront distribution (dự kiến cho Ngày 4). <br> + Tạo CNAME records cho subdomains nếu cần. <br> + Cấu hình DNS settings và xác minh domain ownership. <br> + Tài liệu hóa cấu hình DNS và record types. | 27/10/2025 | 27/10/2025 | Tài liệu Route 53 |
| 3 | - **Cấu hình S3 Frontend Bucket:** <br> + Tạo S3 bucket cho frontend static assets (FE Bucket) với tên phù hợp. <br> + Bật static website hosting trên S3 bucket. <br> + Cấu hình public access policy cho CloudFront access (block public access, allow CloudFront via OAC). <br> + Upload test frontend files (HTML, CSS, JS, images) lên S3 bucket. <br> + Kiểm tra static website hosting endpoint và xác minh file accessibility. | 28/10/2025 | 28/10/2025 | Tài liệu S3 |
| 4 | - **Thiết lập CloudFront Distribution:** <br> + Tạo CloudFront distribution với S3 bucket làm origin. <br> + Cấu hình Origin Access Control (OAC) cho secure S3 access (thay thế OAI). <br> + Thiết lập cache policies (CachingOptimized, CachingDisabled, v.v.). <br> + Cấu hình default root object (index.html). <br> + Map Route 53 domain vào CloudFront distribution (cập nhật A record từ Ngày 2). <br> + Kiểm tra CloudFront distribution và xác minh content delivery. | 29/10/2025 | 29/10/2025 | Tài liệu CloudFront |
| 5 | - **Tích hợp AWS WAF:** <br> + Tạo AWS WAF WebACL cho CloudFront protection. <br> + Thêm managed rules: AWS Managed Rules cho SQL injection protection. <br> + Thêm managed rules: AWS Managed Rules cho XSS (Cross-Site Scripting) protection. <br> + Cấu hình bot control rules để chặn common bots và scrapers. <br> + Liên kết WAF WebACL với CloudFront distribution. <br> + Kiểm tra WAF rules bằng cách thử các mẫu tấn công phổ biến và xác minh blocking. | 30/10/2025 | 30/10/2025 | Tài liệu AWS WAF |
| 6 | - **Cấu hình ACM Certificate & HTTPS:** <br> + Request ACM Certificate trong us-east-1 region (bắt buộc cho CloudFront). <br> + Validate certificate sử dụng DNS validation method (thêm CNAME records vào Route 53). <br> + Chờ certificate validation và issuance. <br> + Bind ACM certificate vào CloudFront distribution. <br> + Cấu hình CloudFront để sử dụng HTTPS only (redirect HTTP to HTTPS). <br> + Kiểm tra HTTPS connection và xác minh SSL/TLS certificate hoạt động đúng. <br> - **Tóm tắt tuần 8:** Edge layer và frontend storage hoàn tất, sẵn sàng cho VPC và networking setup trong tuần 9. | 31/10/2025 | 31/10/2025 | Tài liệu ACM |

---

### Kết quả đạt được trong tuần 8:

- Hoàn thành thành công **phân tích hệ thống và thiết kế kiến trúc**:

  - Phân tích yêu cầu hệ thống và xem xét sơ đồ kiến trúc hoàn chỉnh.
  - Tạo tài liệu High-Level Design (HLD) với tổng quan kiến trúc và mối quan hệ các thành phần.
  - Tài liệu hóa data flow từ users qua edge services đến frontend storage.
  - Thiết lập resource naming conventions và planning documentation.

- Thiết lập **quản lý DNS Route 53**:

  - Tạo Route 53 hosted zone cho quản lý domain.
  - Cấu hình A và CNAME records cho domain routing.
  - Thiết lập nền tảng DNS để kết nối domain với CloudFront distribution.

- Cấu hình **S3 cho static frontend hosting**:

  - Tạo S3 bucket cho frontend static assets với naming conventions phù hợp.
  - Bật static website hosting trên S3 bucket.
  - Cấu hình public access policies: block public access, allow CloudFront access qua Origin Access Control.
  - Upload test frontend files và xác minh static website hosting functionality.

- Triển khai **CloudFront distribution**:

  - Tạo CloudFront distribution với S3 bucket làm origin.
  - Cấu hình Origin Access Control (OAC) cho secure S3 access (thay thế hiện đại cho OAI).
  - Thiết lập cache policies cho optimized content delivery.
  - Map Route 53 domain vào CloudFront distribution.
  - Xác minh content delivery qua CloudFront CDN globally.

- Triển khai **AWS WAF protection**:

  - Tạo AWS WAF WebACL với các quy tắc bảo mật toàn diện.
  - Thêm AWS Managed Rules cho SQL injection protection.
  - Thêm AWS Managed Rules cho XSS (Cross-Site Scripting) protection.
  - Cấu hình bot control rules để chặn malicious bots và scrapers.
  - Liên kết WAF WebACL với CloudFront distribution.
  - Kiểm tra WAF rules và xác minh protection chống lại các mẫu tấn công phổ biến.

- Bật **HTTPS với ACM Certificate**:

  - Request và validate ACM Certificate trong us-east-1 region (bắt buộc cho CloudFront).
  - Sử dụng DNS validation method với CNAME records trong Route 53.
  - Bind ACM certificate vào CloudFront distribution.
  - Cấu hình CloudFront để enforce HTTPS (redirect HTTP to HTTPS).
  - Xác minh SSL/TLS certificate hoạt động đúng và secure connections được thiết lập.

- Sau tuần 8, edge layer và frontend storage đã hoàn tất với secure, global content delivery. Hệ thống sẵn sàng cho VPC và networking core setup trong tuần 9.
