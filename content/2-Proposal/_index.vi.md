---
title: "Bản đề xuất"
date: 2025-09-10
weight: 2
chapter: false
pre: " <b> 2. </b> "
---

Trong phần này, bạn cần tóm tắt các nội dung của workshop mà bạn **dự định** sẽ thực hiện.

# Hệ thống Hỗ trợ Hiến máu
## Giải pháp AWS cho Phần mềm Hỗ trợ Hiến máu

### 1. Tóm tắt điều hành
**Hệ thống Hỗ trợ Hiến máu (BDSS)** là một nền tảng web hỗ trợ quản lý và kết nối người hiến máu với các cơ sở y tế. Dự án được phát triển bởi một nhóm sinh viên tại Thành phố Hồ Chí Minh nhằm tối ưu hóa quy trình hiến máu, giảm gánh nặng tìm kiếm người hiến máu và cải thiện hiệu quả giao tiếp y tế.

Hệ thống được xây dựng trên **kiến trúc AWS Cloud**, sử dụng **Amazon EC2**, **Amazon RDS**, **API Gateway**, **Cognito** và **CI/CD Pipeline (GitLab + CodePipeline)** để triển khai tự động. BDSS hỗ trợ bốn nhóm người dùng (Guest, Member, Staff, Admin), cung cấp các tính năng tìm kiếm, đăng ký hiến máu, quản lý ngân hàng máu, theo dõi quy trình hiến máu và báo cáo trực quan.

### 2. Tuyên bố vấn đề
### Vấn đề là gì?
Các cơ sở y tế hiện đang quản lý quy trình hiến máu thủ công hoặc thông qua các công cụ rời rạc. Việc tìm kiếm người hiến máu phù hợp về nhóm máu hoặc khu vực là khó khăn, đặc biệt trong các tình huống khẩn cấp. Ngoài ra, các hệ thống lưu trữ dữ liệu không được đồng bộ hóa, gây khó khăn cho việc phân tích, báo cáo và tối ưu hóa các chiến dịch hiến máu.

### Giải pháp
Phát triển một **nền tảng hỗ trợ hiến máu toàn diện trên AWS Cloud**, với các chức năng quản lý hiến máu, tìm kiếm người hiến máu và người cần máu theo nhóm máu hoặc vị trí địa lý, tích hợp xác thực người dùng qua Amazon Cognito, và quản trị dữ liệu trên Amazon RDS. Frontend được triển khai qua **Route 53 + CloudFront**, backend qua **API Gateway – EC2**, cơ sở dữ liệu MySQL trên **Amazon RDS**, và pipeline CI/CD tự động sử dụng **GitLab – CodePipeline**.

### Lợi ích và Hoàn vốn đầu tư
Giảm 60–70% thời gian tìm kiếm người hiến máu phù hợp. Tăng độ chính xác của thông tin nhóm máu và vị trí. Tối ưu hóa chi phí vận hành với kiến trúc cloud linh hoạt, trả tiền theo sử dụng. Cải thiện phản ứng với các tình huống khẩn cấp về máu

### 3. Kiến trúc giải pháp
Nền tảng sử dụng kiến trúc AWS serverless để quản lý dữ liệu từ 5 trạm dựa trên Raspberry Pi, có thể mở rộng lên 15. Dữ liệu được tiếp nhận qua AWS IoT Core, lưu trữ trong S3 data lake, và xử lý bởi AWS Glue Crawlers và các tác vụ ETL để chuyển đổi và tải vào một S3 bucket khác để phân tích. Lambda và API Gateway xử lý bổ sung, trong khi Amplify với Next.js lưu trữ bảng điều khiển, được bảo mật bởi Cognito. Kiến trúc được mô tả chi tiết dưới đây:

![Kiến trúc Phần mềm Hỗ trợ Hiến máu](/images/image.jpeg)

![Kiến trúc Nền tảng Hệ thống Hỗ trợ Hiến máu](/images/image1.jpeg)


Hệ thống được chia thành **4 lớp chính**:

1. *Lớp Edge Networking:*
*Route 53* quản lý domain và định tuyến DNS.
*CloudFront* tăng tốc độ tải trang và phân phối nội dung tĩnh.
*AWS WAF* bảo vệ chống lại các cuộc tấn công web (SQL injection, DDoS).

2. *Lớp Ứng dụng & Dữ liệu:*
*Amazon EC2*: Triển khai backend API và xử lý nghiệp vụ chính.
*Amazon RDS (MySQL)*: Lưu trữ dữ liệu người hiến máu, nhóm máu, lịch sử hiến máu.
*API Gateway*: Giao tiếp giữa frontend và backend.
*Elastic Load Balancer (ELB)*: Phân phối tải đến các EC2 instances.
*NAT Gateway & Internet Gateway*: Hỗ trợ kết nối Internet an toàn.

3. *Lớp CI/CD & DevOps:*
*GitLab*: Quản lý mã nguồn.
*AWS CodePipeline, CodeBuild*: Triển khai và cập nhật tự động.

4. *Lớp Giám sát & Bảo mật:*
*Amazon Cognito*: Xác thực và phân quyền (Guest, Member, Staff, Admin).
*CloudWatch, CloudTrail, IAM, Secrets Manager*: Giám sát, bảo mật, cảnh báo hệ thống.
*SNS*: Gửi thông báo khi có sự kiện (khẩn cấp về máu, người hiến máu phù hợp).

### 4. Triển khai kỹ thuật
*Các giai đoạn triển khai*
1. *Phân tích & Thiết kế (Tháng 1)*
* Thu thập yêu cầu, định nghĩa use cases, thiết kế ERD và kiến trúc AWS.

2. *Thiết lập Hạ tầng & Pipeline (Tháng 2)*
* Cấu hình Route 53, CloudFront, EC2, RDS và CI/CD trên AWS.

3. *Phát triển & Kiểm thử (Tháng 3-4)*
* Xây dựng các module chính: đăng ký hiến máu, tìm kiếm, quản lý ngân hàng máu.
* Tích hợp Cognito và hệ thống cảnh báo SNS.

4. *Triển khai & Vận hành (Tháng 5)*
* Triển khai sản phẩm chính thức và giám sát với CloudWatch.

**Yêu cầu kỹ thuật chính:**
*Frontend:* React/Next.js hoặc Angular (triển khai qua S3/CloudFront).
*Backend:* Node.js/Express trên EC2, giao tiếp qua REST API Gateway.
*Database:* Amazon RDS MySQL, tối ưu query và backup định kỳ.
*CI/CD:* GitLab → CodeBuild → CodePipeline → EC2.
*Auth:* Cognito (4 vai trò: Guest, Member, Staff, Admin).
*Alert & Logs:* SNS + CloudWatch + CloudTrail.

### 5. Lộ trình & Mốc triển khai
| Lộ trình | Giai đoạn | Kết quả chính |
| ------------- | ---------------------------- | ------------------------------------------------ |
| **Tháng 1** | Phân tích yêu cầu & thiết kế | Kiến trúc AWS + biểu đồ use case |
| **Tháng 2** | Thiết lập hạ tầng & pipeline | EC2, RDS, API Gateway hoạt động |
| **Tháng 3–4** | Phát triển & kiểm thử | Các module chính hoàn thiện |
| **Tháng 5** | Triển khai live | Hệ thống ổn định, có báo cáo Dashboard |

### 6. Ước tính ngân sách
| Dịch vụ | Chi phí ước tính/Tháng (USD) | Ghi chú |
| ---------------------------- | ---------------------------- | -------------------- |
| EC2 (t3.nano)  | 3.50 | Backend REST API |
| Amazon RDS (MySQL) | 2.80 | 20 GB storage |
| API Gateway | 0.50 | 5,000 requests |
| CloudFront + S3 | 0.80 | Website + CDN |
| Route 53 | 0.50 | Domain & DNS |
| Cognito | 0.10 | <100 users |
| CloudWatch + Logs | 0.30 | Giám sát & Cảnh báo |
| CI/CD (CodePipeline, CodeBuild) | 0.40 | Triển khai tự động |
| **Tổng** | **8.9 USD/tháng** | ~106.8 USD/năm |

> Tổng chi phí có thể thay đổi dựa trên AWS Free Tier hoặc việc sử dụng spot instance.

### 7. Đánh giá rủi ro
| Rủi ro | Tác động | Xác suất | Giảm thiểu |
| -------------------------- | ---------- | ---------- | ----------------------- |
| Mất kết nối Internet | Trung bình | Trung bình | Dự phòng trên EC2 Backup |
| Tấn công DDoS | Cao | Thấp | AWS WAF + CloudFront |
| Hư hỏng dữ liệu người dùng | Cao | Thấp | RDS Backup + IAM Restricted Access |
| Vượt quá chi phí | Trung bình | Thấp | AWS Budget Alert |
| Gián đoạn triển khai CI/CD | Thấp | Trung bình | Kiểm thử Pipeline trước khi Merge |

### 8. Kết quả kỳ vọng
*Công nghệ:* Hệ thống cloud-native, CI/CD tự động, hỗ trợ đa người dùng và bảo mật cao.
*Ứng dụng:* Giúp các cơ sở y tế quản lý hiến máu hiệu quả, tối thiểu hóa quy trình thủ công.
*Mở rộng:* Có thể nhân rộng cho nhiều bệnh viện khác, tích hợp AI để phân tích nhu cầu nhóm máu hoặc dự đoán các đợt hiến máu sắp tới.
