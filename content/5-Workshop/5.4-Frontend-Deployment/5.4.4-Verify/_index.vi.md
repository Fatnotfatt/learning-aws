---
title: "Xác Minh Triển Khai Full Stack"
date: 2025-09-09
weight: 4
chapter: false
pre: " <b> 5.4.4 </b> "
---

#### Kiểm Thử Luồng Ứng Dụng Hoàn Chỉnh

Trong phần này, bạn sẽ xác minh rằng toàn bộ application stack đang hoạt động đúng, từ frontend đến backend đến database.

#### Bước 1: Xác Minh Backend Health

Kiểm thử backend health endpoint qua API Gateway:

```bash
API_URL=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='APIGatewayURL'].OutputValue" \
  --output text)

curl ${API_URL}/dna_service/actuator/health
```

**Kết Quả Mong Đợi:** `{"status":"UP"}`

#### Bước 2: Kiểm Thử Truy Cập Frontend

1. Mở CloudFront URL trong trình duyệt:

```
https://d3gmmg22uirq0t.cloudfront.net
```

2. Mở Developer Tools (F12) và kiểm tra tab Console cho bất kỳ lỗi nào.

3. Xác minh API URL được cấu hình đúng bằng cách kiểm tra network requests.

#### Bước 3: Kiểm Thử Đăng Ký/Đăng Nhập User

1. Thử đăng ký user mới hoặc đăng nhập với credentials hiện có.

2. Xác minh rằng:
   - API calls thành công (kiểm tra tab Network trong DevTools)
   - JWT token được lưu trong localStorage
   - User được chuyển hướng đến trang phù hợp sau khi đăng nhập

#### Bước 4: Xác Minh Kết Nối Database

Kết nối EC2 qua Session Manager và kiểm tra application logs:

```bash
# Kết nối EC2
aws ssm start-session --target <INSTANCE_ID> --region ap-southeast-1

# Trên EC2, kiểm tra logs
tail -50 /opt/workshop/application.log | grep -i "database\|connection\|error"
```

**Kết Quả Mong Đợi:** Không có lỗi kết nối database trong logs.

#### Bước 5: Giám Sát Ứng Dụng

1. Kiểm tra CloudWatch Logs:

```bash
aws logs tail /aws/workshop-aws/dev/application --follow --region ap-southeast-1
```

2. Kiểm tra EC2 metrics trong CloudWatch console:
   - CPU utilization
   - Network in/out
   - Application health

#### Xử Lý Sự Cố Thường Gặp

**Frontend không kết nối được API:**
- Xác minh `VITE_API_URL` trong `.env` khớp với API Gateway URL
- Kiểm tra cấu hình CORS trong backend
- Xác minh API Gateway integration với ALB

**Backend không phản hồi:**
- Kiểm tra EC2 instance đang chạy
- Xác minh ứng dụng đang chạy: `ps aux | grep java`
- Kiểm tra application logs: `tail -100 /opt/workshop/application.log`

**Lỗi kết nối database:**
- Xác minh RDS security group cho phép traffic từ EC2 security group
- Kiểm tra RDS endpoint đúng trong `application.properties`
- Xác minh database credentials

#### Tóm Tắt Phần

Bạn đã triển khai và xác minh thành công ứng dụng full-stack hoàn chỉnh. Kiến trúc bao gồm:
- Frontend được phục vụ qua CloudFront từ S3
- Backend chạy trên EC2 trong private subnets
- API Gateway định tuyến requests đến ALB
- RDS MySQL database để lưu trữ dữ liệu
- VPC endpoints cho truy cập dịch vụ AWS an toàn

