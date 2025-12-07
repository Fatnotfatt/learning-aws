---
title: "Dọn Dẹp"
date: 2025-09-09
weight: 6
chapter: false
pre: " <b> 5.6. </b> "
---

#### Chúc Mừng!

Bạn đã hoàn thành thành công việc triển khai Workshop AWS Project! Trong workshop này, bạn đã học:

- Cách triển khai ứng dụng full-stack trên AWS sử dụng CloudFormation
- Các mẫu kiến trúc cho tính sẵn sàng cao và khả năng mở rộng
- Thực hành bảo mật tốt nhất với private subnets và VPC endpoints
- Cấu hình giám sát và auto-scaling
- Quy trình triển khai frontend và backend

#### Dọn Dẹp Tài Nguyên

Để tránh phát sinh chi phí, xóa tất cả tài nguyên được tạo trong workshop này.

#### Phương Pháp 1: Xóa CloudFormation Stack (Khuyến Nghị)

Cách dễ nhất để dọn dẹp là xóa CloudFormation stack:

```bash
aws cloudformation delete-stack \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1
```

**Lưu ý:** Một số tài nguyên có thể cần xóa thủ công nếu chúng có deletion protection hoặc dependencies.

#### Phương Pháp 2: Dọn Dẹp Thủ Công (nếu cần)

Nếu việc xóa stack thất bại hoặc để lại một số tài nguyên, xóa thủ công:

1. **Dừng EC2 Instances:**
   ```bash
   aws autoscaling update-auto-scaling-group \
     --auto-scaling-group-name <ASG_NAME> \
     --min-size 0 \
     --desired-capacity 0 \
     --region ap-southeast-1
   ```

2. **Xóa S3 Buckets:**
   ```bash
   # Làm trống frontend bucket
   aws s3 rm s3://workshop-aws-dev-frontend-502310717700-ap-southeast-1/ --recursive
   aws s3 rb s3://workshop-aws-dev-frontend-502310717700-ap-southeast-1
   
   # Làm trống backend bucket
   aws s3 rm s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/ --recursive
   aws s3 rb s3://workshop-aws-dev-backend-502310717700-ap-southeast-1
   ```

3. **Vô Hiệu Hóa và Xóa CloudFront Distribution:**
   - Đầu tiên vô hiệu hóa distribution (đợi nó được vô hiệu hóa)
   - Sau đó xóa nó

4. **Xóa RDS Database:**
   - Tạo snapshot cuối cùng nếu cần
   - Xóa database instance (có thể mất 10-15 phút)

5. **Xóa API Gateway:**
   - Xóa REST API

6. **Xóa Load Balancer:**
   - Xóa Application Load Balancer

7. **Xóa VPC Endpoints:**
   - Xóa tất cả VPC endpoints

8. **Xóa CloudWatch Logs:**
   ```bash
   aws logs delete-log-group \
     --log-group-name /aws/workshop-aws/dev/application \
     --region ap-southeast-1
   ```

#### Xác Minh Dọn Dẹp

Kiểm tra các dịch vụ sau để đảm bảo tất cả tài nguyên đã được xóa:

- **EC2**: Không có instances, security groups, hoặc load balancers
- **RDS**: Không có database instances
- **S3**: Không có buckets
- **CloudFront**: Không có distributions
- **API Gateway**: Không có APIs
- **VPC**: VPC và các tài nguyên liên quan (nếu không được quản lý bởi CloudFormation)
- **CloudWatch**: Không có log groups
- **IAM**: Xem xét và xóa các roles/policies tùy chỉnh nếu được tạo thủ công

#### Xác Minh Chi Phí

Sau khi dọn dẹp, xác minh trong **AWS Cost Explorer** rằng không có chi phí nào đang phát sinh cho các tài nguyên đã xóa.

![delete stack](/images/5-Workshop/5.6-Cleanup/delete-stack.png)
