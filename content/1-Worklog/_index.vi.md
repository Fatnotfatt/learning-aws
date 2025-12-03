---
title: "Nhật ký công việc"
date: 2025-09-10
weight: 1
chapter: false
pre: " <b> 1. </b> "
---

## Tổng quan

Worklog này ghi lại hành trình của tôi trong chương trình thực tập AWS Cloud Journey, nơi tôi hoàn thành trải nghiệm học tập và dự án thực hành toàn diện trong 12 tuần. Chương trình được cấu trúc để xây dựng kiến thức từ các khái niệm AWS cơ bản đến triển khai một kiến trúc web application hoàn chỉnh, sẵn sàng cho production trên AWS.

**Thời gian:** 12 tuần (khoảng 3 tháng)  
**Ngày hoàn thành:** Tháng 11 năm 2025  
**Dự án cuối cùng:** AWS web application production-ready với CI/CD, monitoring, và security

---

## Tiến độ theo tuần

**Tuần 1:** [Làm quen với AWS và các dịch vụ cơ bản trong AWS](1.1-week1/) - Giới thiệu về hệ sinh thái AWS, điều hướng console, và các dịch vụ cơ bản.

**Tuần 2:** [Khám phá các dịch vụ AWS cơ bản](1.2-week2/) - Đi sâu vào các dịch vụ AWS cốt lõi và use cases của chúng.

**Tuần 3:** [Các khái niệm AWS nâng cao](1.3-week3/) - Khám phá các tính năng nâng cao và tích hợp dịch vụ.

**Tuần 4:** [Thực hành labs và bài tập](1.4-week4/) - Các bài tập thực hành và phiên lab để củng cố kiến thức.

**Tuần 5:** [Labs và workshops nâng cao](1.5-week5/) - Các kịch bản phức tạp và tích hợp đa dịch vụ.

**Tuần 6:** [Dịch vụ Database trên AWS](1.6-week6/) - Amazon RDS, Aurora, Redshift, ElastiCache, và các công cụ migration database (DMS, SCT).

**Tuần 7:** [Dịch vụ Analytics và Data Lake](1.7-week7/) - Amazon DynamoDB, AWS Glue, Amazon Athena, Amazon QuickSight, và xây dựng data lakes trên AWS.

**Tuần 8:** [Edge Layer và Frontend Infrastructure](1.8-week8/) - Route 53, S3 static hosting, CloudFront CDN, AWS WAF, và thiết lập ACM Certificate.

**Tuần 9:** [VPC và Networking Core](1.9-week9/) - Tạo VPC, subnets, Internet Gateway, NAT Gateway, Security Groups, IAM roles, và VPC Flow Logs.

**Tuần 10:** [Triển khai Backend và Database](1.10-week10/) - Thiết lập EC2 backend, cấu hình RDS database, API Gateway, Cognito authentication, và Auto Scaling Group.

**Tuần 11:** [CI/CD Pipeline và Monitoring](1.11-week11/) - Tích hợp GitLab, CodePipeline, CodeBuild, SSH-less deployment, CloudWatch monitoring, CloudTrail, và SNS alerts.

**Tuần 12:** [Hoàn thiện dự án và tài liệu](1.12-week12/) - Kiểm tra cuối cùng, tài liệu, và bàn giao dự án.

---

## Khó khăn và Giải pháp

Trong suốt 12 tuần của chương trình, tôi đã gặp phải nhiều thách thức kỹ thuật đòi hỏi giải quyết vấn đề và hiểu biết sâu hơn:

### Khó khăn 1: Cấu hình CloudFront Origin Access Control (OAC)

**Vấn đề:** Ban đầu bị nhầm lẫn giữa Origin Access Identity (OAI) và Origin Access Control (OAC) mới hơn. Phương pháp OAI đã bị deprecated, và tôi cần sử dụng OAC cho truy cập S3 bucket.

**Giải pháp:** Nghiên cứu tài liệu AWS và học được rằng OAC là phương pháp được khuyến nghị. Cập nhật S3 bucket policies để hoạt động với OAC và cấu hình CloudFront distribution tương ứng. Điều này yêu cầu hiểu sự khác biệt trong mô hình permissions giữa OAI và OAC.

### Khó khăn 2: Thiết lập API Gateway VPC Link cho Private Resources

**Vấn đề:** Kết nối API Gateway với EC2 instances trong private subnet là thách thức. Ban đầu thử HTTP integration trực tiếp, nhưng private subnet resources không thể truy cập trực tiếp.

**Giải pháp:** Triển khai API Gateway VPC Link để thiết lập kết nối giữa API Gateway và VPC. Điều này yêu cầu tạo Network Load Balancer (NLB) trong private subnet và cấu hình VPC Link trỏ đến NLB. Học được tầm quan trọng của VPC endpoints và các mẫu kết nối private.

### Khó khăn 3: Kết nối RDS từ EC2 trong Private Subnet

**Vấn đề:** EC2 instance trong private subnet ban đầu không thể kết nối với RDS database. Security group rules không được cấu hình đúng, và tôi không sử dụng RDS endpoint chính xác.

**Giải pháp:**

- Xác minh Security Group rules: RDS Security Group phải cho phép inbound từ EC2 Security Group trên database port (3306/5432).
- Sử dụng AWS Secrets Manager để retrieve database credentials an toàn thay vì hardcode.
- Kiểm tra kết nối sử dụng AWS Systems Manager Session Manager để truy cập EC2 mà không cần SSH.

### Khó khăn 4: CodeBuild và CloudFront Cache Invalidation

**Vấn đề:** Sau khi deploy frontend updates qua CodeBuild lên S3, các thay đổi không được phản ánh ngay lập tức do CloudFront caching. Manual cache invalidation tốn thời gian.

**Giải pháp:** Tự động hóa CloudFront cache invalidation trong file buildspec.yml của CodeBuild. Thêm AWS CLI command để tạo invalidation sau khi upload S3, đảm bảo người dùng thấy nội dung cập nhật ngay sau deployment.

### Khó khăn 5: SSH-less Deployment cho Backend

**Vấn đề:** Deployment dựa trên SSH truyền thống không an toàn và không hoạt động tốt với Auto Scaling Group (instances là ephemeral). Cần một cách tiếp cận tốt hơn cho automated backend deployments.

**Giải pháp:** Triển khai SSH-less deployment sử dụng AWS Systems Manager (SSM) Run Command. Điều này cho phép CodeBuild thực thi deployment scripts trên EC2 instances mà không cần SSH keys. Cách tiếp cận thay thế sử dụng CodeDeploy cũng được khám phá cho các kịch bản deployment phức tạp hơn.

### Khó khăn 6: CloudWatch Alarms Không Kích Hoạt

**Vấn đề:** Tạo CloudWatch alarms nhưng không nhận được notifications. Ban đầu, alarm threshold quá cao, và SNS topic subscriptions không được cấu hình đúng.

**Giải pháp:**

- Điều chỉnh alarm thresholds dựa trên metrics thực tế của application (CPU >80% trong 5 phút, RDS connections >80% của max).
- Xác minh SNS topic subscriptions (email confirmation là bắt buộc).
- Kiểm tra alarms bằng cách manually trigger conditions để đảm bảo notification flow hoạt động đúng.

### Khó khăn 7: Xác thực Cognito JWT Token trong API Gateway

**Vấn đề:** Sau khi thiết lập Cognito User Pool và Authorizer trong API Gateway, các API calls với JWT tokens bị từ chối với lỗi 401 Unauthorized.

**Giải pháp:**

- Xác minh JWT token format và expiration.
- Kiểm tra Cognito User Pool App Client settings (allowed OAuth flows, callback URLs).
- Đảm bảo API Gateway Authorizer được cấu hình đúng với Cognito User Pool ARN.
- Kiểm tra token generation và validation flow từng bước.

### Khó khăn 8: Vấn đề Launch Template của Auto Scaling Group

**Vấn đề:** Auto Scaling Group không thể launch instances. Launch Template tham chiếu đến AMI không có sẵn trong target Availability Zone.

**Giải pháp:**

- Tạo base AMI trong cùng region và Availability Zone với Auto Scaling Group.
- Xác minh cấu hình Launch Template (instance type, security groups, IAM role, user data).
- Kiểm tra Launch Template manually trước khi sử dụng trong Auto Scaling Group.
- Đảm bảo tất cả resources cần thiết (Security Groups, IAM roles) tồn tại trước khi tạo ASG.

### Khó khăn 9: Tối ưu hóa Chi phí VPC Flow Logs

**Vấn đề:** VPC Flow Logs tạo ra lượng dữ liệu lớn, dẫn đến chi phí CloudWatch Logs cao.

**Giải pháp:**

- Cấu hình log retention policies (7 ngày cho detailed logs, 30 ngày cho aggregated logs).
- Sử dụng S3 làm destination cho long-term log storage (hiệu quả về chi phí hơn CloudWatch Logs).
- Triển khai log filtering để capture chỉ các traffic patterns liên quan.
- Thiết lập lifecycle policies trên S3 để chuyển logs sang storage classes rẻ hơn.

### Khó khăn 10: Độ phức tạp của End-to-End Testing

**Vấn đề:** Kiểm tra luồng hoàn chỉnh từ Route 53 → CloudFront → WAF → API Gateway → EC2 → RDS là phức tạp, và các vấn đề khó cô lập.

**Giải pháp:**

- Triển khai comprehensive logging ở mỗi layer (CloudFront access logs, API Gateway logs, EC2 application logs, RDS slow query logs).
- Sử dụng CloudWatch dashboards để visualize toàn bộ request flow.
- Tạo test scripts để validate từng component độc lập trước khi end-to-end testing.
- Tài liệu hóa troubleshooting procedures cho các vấn đề phổ biến ở mỗi layer.

---

## Những bài học quan trọng

1. **Infrastructure as Code (IaC):** Học được tầm quan trọng của việc sử dụng CloudFormation cho reproducible infrastructure deployments.

2. **Security Best Practices:** Triển khai least-privilege IAM policies, network segmentation, và secure credential management với Secrets Manager.

3. **Monitoring và Observability:** Thiết lập monitoring toàn diện với CloudWatch, CloudTrail, và VPC Flow Logs cho security và performance insights.

4. **CI/CD Automation:** Automated deployment pipelines giảm lỗi thủ công và cải thiện tốc độ deployment.

5. **Cost Optimization:** Học cách cân bằng performance, security, và chi phí thông qua proper resource sizing, caching strategies, và log retention policies.

---

## Kết luận

Hành trình 12 tuần này cung cấp kinh nghiệm thực hành với nhiều AWS services và best practices. Dự án cuối cùng thể hiện một kiến trúc production-ready với security, monitoring, automation, và scalability phù hợp. Các thách thức gặp phải và giải quyết trong giai đoạn này đã tăng cường đáng kể hiểu biết của tôi về cloud architecture và AWS services.
