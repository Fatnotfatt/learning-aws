---
title: "Worklog Tuần 11"
date: 2025-11-16
weight: 11
chapter: false
pre: " <b> 1.11. </b> "
---

### Mục tiêu tuần 11:

- Thiết lập **CI/CD Pipeline**: Kết nối GitLab repository với AWS CodePipeline cho automated deployments.
- Cấu hình **AWS CodeBuild** cho frontend và backend builds với automatic S3 upload và CloudFront invalidation.
- Triển khai **SSH-less deployment** cho backend sử dụng AWS Systems Manager hoặc CodeDeploy.
- Thiết lập **monitoring toàn diện** với CloudWatch logs, metrics, và enhanced monitoring cho EC2 và RDS.
- Cấu hình **AWS CloudTrail** cho audit logging và security compliance.
- Thiết lập **SNS Alerts** với CloudWatch alarms cho critical metrics (EC2 CPU, RDS connections, API 5xx errors).
- Thực hiện **end-to-end testing** và tạo final project documentation với complete architecture diagram.

---

### Các công việc trong tuần:

| Ngày | Công việc                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Ngày bắt đầu | Ngày hoàn thành | Tài liệu tham khảo        |
| ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ | --------------- | ------------------------- |
| 19   | - **Tích hợp GitLab với CodePipeline:** <br> + Tạo GitLab repository cho dự án (nếu chưa tạo). <br> + Thiết lập AWS CodePipeline với source stage kết nối với GitLab repository. <br> + Cấu hình webhook hoặc polling cho automatic pipeline triggers trên code commits. <br> + Tạo S3 bucket cho pipeline artifacts storage. <br> + Kiểm tra pipeline trigger bằng cách tạo test commit vào GitLab repository. <br> + Xác minh CodePipeline có thể kết nối thành công với GitLab và retrieve source code.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 16/11/2025   | 16/11/2025      | Tài liệu CodePipeline     |
| 20   | - **CodeBuild cho Frontend:** <br> + Tạo CodeBuild project cho frontend build process. <br> + Cấu hình buildspec.yml file cho frontend build steps (install dependencies, build assets, optimize). <br> + Thiết lập CodeBuild environment với Docker image phù hợp (Node.js, npm, v.v.). <br> + Cấu hình build output để upload built files lên S3 bucket (FE Bucket). <br> + Thiết lập automatic CloudFront invalidation sau khi upload S3 (invalidate cache cho updated files). <br> + Kiểm tra frontend build process và xác minh files được upload lên S3 và CloudFront cache được invalidate.                                                                                                                                                                                                                                                                                                                                                                                                                                                            | 17/11/2025   | 17/11/2025      | Tài liệu CodeBuild        |
| 21   | - **CodeBuild cho Backend & SSH-less Deployment:** <br> + Tạo CodeBuild project cho backend build process. <br> + Cấu hình buildspec.yml cho backend build steps (compile, test, package artifacts). <br> + Thiết lập CodeBuild environment cho backend (Java/Python/Node.js dựa trên application). <br> + Cấu hình artifact upload lên S3 hoặc CodeDeploy. <br> + Triển khai SSH-less deployment sử dụng AWS Systems Manager (SSM) hoặc CodeDeploy: <br> - Option 1: Sử dụng SSM Run Command để deploy lên EC2 instances mà không cần SSH. <br> - Option 2: Sử dụng CodeDeploy để deploy application lên Auto Scaling Group. <br> + Kiểm tra backend build và deployment process end-to-end.                                                                                                                                                                                                                                                                                                                                                                 | 18/11/2025   | 18/11/2025      | Tài liệu CodeDeploy / SSM |
| 22   | - **Thiết lập CloudWatch Logs & Metrics:** <br> + Tạo CloudWatch log groups cho EC2 application logs. <br> + Cấu hình CloudWatch agent trên EC2 instances để gửi logs và custom metrics. <br> + Thiết lập CloudWatch metrics cho EC2: CPU utilization, memory, disk I/O, network. <br> + Bật RDS Enhanced Monitoring cho detailed database metrics. <br> + Cấu hình API Gateway access logs vào CloudWatch Logs. <br> + Tạo CloudWatch dashboards cho monitoring application health và performance. <br> + Cấu hình log retention policies cho cost optimization.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | 19/11/2025   | 19/11/2025      | Tài liệu CloudWatch       |
| 23   | - **CloudTrail & Audit Dashboard:** <br> + Bật AWS CloudTrail cho API call logging trên tất cả AWS services. <br> + Tạo CloudTrail trail với S3 bucket cho log storage. <br> + Cấu hình CloudTrail log file validation và encryption. <br> + Thiết lập CloudWatch Logs integration cho CloudTrail events (tùy chọn). <br> + Tạo CloudWatch dashboard cho audit và security monitoring. <br> + Xem xét CloudTrail logs để xác minh API call logging hoạt động đúng. <br> + Tài liệu hóa CloudTrail configuration và log retention policies.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 20/11/2025   | 20/11/2025      | Tài liệu CloudTrail       |
| 24   | - **SNS Alerts & CloudWatch Alarms:** <br> + Tạo SNS topic cho alarm notifications. <br> + Subscribe email/SMS endpoints vào SNS topic. <br> + Tạo CloudWatch alarm cho EC2 CPU utilization (threshold: >80% trong 5 phút). <br> + Tạo CloudWatch alarm cho RDS database connections (threshold: >80% của max connections). <br> + Tạo CloudWatch alarm cho API Gateway 5xx errors (threshold: >10 errors trong 5 phút). <br> + Cấu hình alarm actions để gửi notifications qua SNS. <br> + Kiểm tra alarms bằng cách trigger conditions và xác minh email/SMS notifications được nhận.                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | 21/11/2025   | 21/11/2025      | CloudWatch Alarms & SNS   |
| 25   | - **End-to-End Testing & Tài liệu Cuối cùng:** <br> + Thực hiện comprehensive end-to-end testing: Users → Route 53 → CloudFront → WAF → API Gateway → EC2 → RDS. <br> + Kiểm tra CI/CD pipeline với code changes: xác minh automated frontend và backend deployments. <br> + Kiểm tra monitoring và alerting: trigger alarms và xác minh SNS notifications được nhận. <br> + Kiểm tra security: xác minh IAM permissions, Cognito authentication, Secrets Manager access, WAF protection. <br> + Kiểm tra scalability: xác minh Auto Scaling Group phản hồi với load changes. <br> + Tạo final architecture diagram với tất cả components, data flows, và resource relationships. <br> + Viết comprehensive project documentation: deployment procedures, troubleshooting guides, runbooks, và architecture overview. <br> + Chuẩn bị Worklog summary cho tất cả 4 tuần (Tuần 8-11). <br> - **Tóm tắt tuần 11:** Complete AWS web application architecture được triển khai với CI/CD, monitoring, security, và automation. Dự án sẵn sàng cho production use. | 22/11/2025   | 22/11/2025      | Tài liệu dự án            |

---

### Kết quả đạt được trong tuần 11:

- Thiết lập thành công **CI/CD Pipeline**:

  - Kết nối GitLab repository với AWS CodePipeline cho automated deployments.
  - Cấu hình automatic pipeline triggers trên code commits (webhook hoặc polling).
  - Tạo S3 bucket cho pipeline artifacts storage.
  - Xác minh end-to-end pipeline connectivity và source code retrieval.

- Cấu hình **CodeBuild cho Frontend**:

  - Tạo CodeBuild project với buildspec.yml cho frontend build automation.
  - Cấu hình build environment với Docker image và dependencies phù hợp.
  - Thiết lập automatic S3 upload của built frontend files.
  - Triển khai automatic CloudFront cache invalidation sau deployments.
  - Xác minh frontend build và deployment process hoạt động đúng.

- Triển khai **CodeBuild cho Backend với SSH-less Deployment**:

  - Tạo CodeBuild project cho backend build automation.
  - Cấu hình buildspec.yml cho backend compilation, testing, và packaging.
  - Triển khai SSH-less deployment sử dụng AWS Systems Manager (SSM) hoặc CodeDeploy.
  - Loại bỏ nhu cầu SSH keys và cải thiện security posture.
  - Xác minh backend build và deployment process hoạt động end-to-end.

- Thiết lập **CloudWatch Monitoring toàn diện**:

  - Tạo CloudWatch log groups cho EC2 application logs.
  - Cấu hình CloudWatch agent trên EC2 instances cho logs và custom metrics.
  - Thiết lập CloudWatch metrics cho EC2 (CPU, memory, disk, network).
  - Bật RDS Enhanced Monitoring cho detailed database insights.
  - Cấu hình API Gateway access logs vào CloudWatch Logs.
  - Tạo CloudWatch dashboards cho real-time monitoring.
  - Cấu hình log retention policies cho cost optimization.

- Cấu hình **CloudTrail cho Audit và Compliance**:

  - Bật CloudTrail cho comprehensive API call logging.
  - Tạo CloudTrail trail với S3 bucket cho secure log storage.
  - Cấu hình log file validation và encryption.
  - Thiết lập CloudWatch dashboard cho audit monitoring.
  - Thiết lập audit trail cho security và compliance requirements.

- Triển khai **SNS Alerts và CloudWatch Alarms**:

  - Tạo SNS topic cho alarm notifications với email/SMS subscriptions.
  - Tạo CloudWatch alarm cho EC2 CPU utilization monitoring.
  - Tạo CloudWatch alarm cho RDS database connection monitoring.
  - Tạo CloudWatch alarm cho API Gateway 5xx error detection.
  - Cấu hình alarm actions để gửi notifications qua SNS.
  - Kiểm tra alarms và xác minh notification delivery.

- Thực hiện **comprehensive end-to-end testing**:

  - Xác minh complete application flow: Users → Route 53 → CloudFront → WAF → API Gateway → EC2 → RDS.
  - Kiểm tra CI/CD pipeline với code changes và xác minh automated deployments.
  - Kiểm tra monitoring và alerting: trigger alarms và xác minh SNS notifications.
  - Kiểm tra security: xác minh IAM permissions, Cognito authentication, Secrets Manager, WAF protection.
  - Kiểm tra scalability: xác minh Auto Scaling Group phản hồi với load changes.

- Tạo **final project documentation**:

  - Tạo comprehensive architecture diagram với tất cả components, data flows, và resource relationships.
  - Tài liệu hóa deployment procedures, troubleshooting guides, và runbooks.
  - Chuẩn bị architecture overview và system design documentation.
  - Hoàn tất Worklog summary cho tất cả 4 tuần (Tuần 8-11).

- Sau tuần 11, complete AWS web application architecture đã được triển khai đầy đủ, monitored, secured, và automated:

  - **Edge Layer**: Route 53, CloudFront, AWS WAF, ACM Certificate, S3 (Frontend).
  - **Networking Layer**: VPC, public/private subnets, Internet Gateway, NAT Gateway, Security Groups, VPC Flow Logs.
  - **Compute & Database Layer**: EC2 (với Auto Scaling), RDS, API Gateway, Cognito.
  - **CI/CD Pipeline**: GitLab, CodePipeline, CodeBuild (Frontend & Backend), SSH-less deployment.
  - **Monitoring & Security**: CloudWatch (Logs, Metrics, Dashboards, Alarms), CloudTrail, SNS Alerts, IAM, Secrets Manager.

  Dự án thể hiện một AWS architecture production-ready, scalable, secure, và well-monitored theo best practices với complete automation và observability.
