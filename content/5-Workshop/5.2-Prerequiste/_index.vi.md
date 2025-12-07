---
title: "Yêu Cầu Trước"
date: 2025-09-09
weight: 2
chapter: false
pre: " <b> 5.2. </b> "
---

#### Quyền IAM

Thêm policy quyền IAM sau vào tài khoản user của bạn để triển khai và dọn dẹp workshop này.

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "cloudformation:*",
                "cloudwatch:*",
                "ec2:*",
                "iam:*",
                "s3:*",
                "rds:*",
                "apigateway:*",
                "cloudfront:*",
                "ssm:*",
                "logs:*",
                "autoscaling:*",
                "elasticloadbalancing:*"
            ],
            "Resource": "*"
        }
    ]
}
```

#### Triển Khai Tài Nguyên Sử Dụng CloudFormation

Trong workshop này, chúng ta sẽ sử dụng **region Singapore (ap-southeast-1)**.

Để triển khai hạ tầng, sử dụng lệnh sau:

```bash
aws cloudformation create-stack \
  --stack-name workshop-aws-dev \
  --template-body file://aws/infrastructure.yaml \
  --parameters file://aws/parameters.json \
  --capabilities CAPABILITY_NAMED_IAM \
  --region ap-southeast-1
```

Hoặc cập nhật stack hiện có:

```bash
aws cloudformation update-stack \
  --stack-name workshop-aws-dev \
  --template-body file://aws/infrastructure.yaml \
  --parameters file://aws/parameters.json \
  --capabilities CAPABILITY_NAMED_IAM \
  --region ap-southeast-1
```

#### Yêu Cầu Trước Khi Triển Khai

Trước khi triển khai, đảm bảo bạn có:

- **AWS CLI** đã cài đặt và cấu hình với credentials phù hợp
- **Quyền IAM** như đã chỉ định trong phần quyền IAM ở trên
- **File Parameters**: `aws/parameters.json` đã được cấu hình với các giá trị của bạn
- **EC2 Key Pair**: Tạo key pair trong AWS Console (mặc dù chúng ta sẽ dùng SSM Session Manager)

#### Triển Khai CloudFormation Stack

Quá trình triển khai **CloudFormation** mất khoảng **20-25 phút** để hoàn thành. Stack sẽ tạo:

- **1 VPC** với public và private subnets trên 2 Availability Zones
- **1 Auto Scaling Group** với EC2 instances (t3.micro)
- **1 RDS MySQL** database instance (db.t3.micro)
- **2 S3 Buckets** (frontend và backend)
- **1 CloudFront Distribution** cho frontend
- **1 Application Load Balancer** cho backend
- **1 API Gateway** REST API
- **5 VPC Endpoints** (S3 Gateway, SSM, SSM Messages, EC2 Messages, CloudWatch Logs)
- **IAM Roles và Policies** cho EC2, Lambda, và các dịch vụ khác
- **Security Groups** cho kiểm soát truy cập mạng
- **Route Tables** và **Internet Gateway** cho networking

#### Xác Minh Triển Khai

Sau khi stack tạo xong, xác minh các tài nguyên sau:

- **VPC**: Kiểm tra VPC console cho `workshop-aws-dev-vpc`
- **EC2 Instances**: Kiểm tra Auto Scaling Group cho các instances đang chạy
- **RDS**: Xác minh database endpoint trong RDS console
- **S3 Buckets**: Xác nhận frontend và backend buckets tồn tại
- **CloudFront**: Kiểm tra trạng thái distribution
- **API Gateway**: Xác minh REST API đã được triển khai

![complete](/images/5-Workshop/5.2-Prerequisite/complete.png)
