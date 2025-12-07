---
title: "Triển Khai Backend"
date: 2025-09-09
weight: 3
chapter: false
pre: " <b> 5.3. </b> "
---

#### Triển Khai Ứng Dụng Backend

Trong phần này, bạn sẽ build và triển khai **ứng dụng Spring Boot backend** lên các EC2 instances. Backend sẽ chạy trong private subnets và có thể truy cập qua Application Load Balancer và API Gateway.

Quá trình triển khai bao gồm:

- Build file JAR Spring Boot
- Upload JAR lên S3
- Triển khai lên EC2 instances qua Session Manager
- Cấu hình application properties
- Khởi động dịch vụ ứng dụng

![overview](/images/5-Workshop/5.3-S3-vpc/diagram2.png)

#### Nội Dung

- [Build và Upload Backend](5.3.1-Build-Upload/)
- [Triển Khai lên EC2](5.3.2-Deploy-EC2/)

