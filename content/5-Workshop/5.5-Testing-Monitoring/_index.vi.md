---
title: "Kiểm Thử và Giám Sát"
date: 2025-09-09
weight: 5
chapter: false
pre: " <b> 5.5. </b> "
---

#### Kiểm Thử và Giám Sát Ứng Dụng

Trong phần này, bạn sẽ học cách kiểm thử ứng dụng và giám sát hiệu suất của nó sử dụng AWS CloudWatch và các công cụ giám sát khác.

#### Kiểm Thử Ứng Dụng

1. **Health Check Endpoints:**
   - Backend: `https://98385v3jef.execute-api.ap-southeast-1.amazonaws.com/dev/dna_service/actuator/health`
   - Frontend: `https://d3gmmg22uirq0t.cloudfront.net`

2. **Kiểm Thử API:**
   - Sử dụng Swagger UI: `https://98385v3jef.execute-api.ap-southeast-1.amazonaws.com/dev/dna_service/swagger-ui.html`
   - Kiểm thử endpoints sử dụng curl hoặc Postman

3. **Kiểm Thử End-to-End:**
   - Đăng ký user mới
   - Đăng nhập và xác minh JWT token
   - Tạo và quản lý tài nguyên
   - Xác minh dữ liệu được lưu trong database

#### Giám Sát CloudWatch

1. **Xem Application Logs:**

```bash
aws logs tail /aws/workshop-aws/dev/application --follow --region ap-southeast-1
```

2. **Kiểm Tra EC2 Metrics:**
   - CPU Utilization
   - Network In/Out
   - Status Check Failed

3. **Giám Sát RDS:**
   - Database connections
   - CPU utilization
   - Storage space

4. **API Gateway Metrics:**
   - Request count
   - Latency
   - Error rates

#### Auto Scaling

Auto Scaling Group sẽ tự động:
- Scale up khi CPU > 70% trong 5 phút
- Scale down khi CPU < 30% trong 5 phút
- Duy trì giữa 1-2 instances (có thể cấu hình)

Giám sát các hoạt động scaling:

```bash
aws autoscaling describe-scaling-activities \
  --auto-scaling-group-name <ASG_NAME> \
  --region ap-southeast-1
```

#### Tối Ưu Hiệu Suất

1. **CloudFront Cache:**
   - Static assets được cache tại edge locations
   - Invalidate cache khi triển khai cập nhật

2. **Tối Ưu Database:**
   - Giám sát slow queries
   - Tối ưu indexes
   - Cân nhắc read replicas cho traffic cao

3. **Tối Ưu Ứng Dụng:**
   - Giám sát JVM heap usage
   - Tối ưu database queries
   - Sử dụng connection pooling hiệu quả

