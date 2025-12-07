---
title: "Workshop"
date: 2025-09-10
weight: 5
chapter: false
pre: " <b> 5. </b> "
---

# Triển Khai Ứng Dụng Full-Stack trên AWS

#### Tổng Quan

Workshop này hướng dẫn cách triển khai một **ứng dụng web full-stack hoàn chỉnh** trên AWS sử dụng **Infrastructure as Code (CloudFormation)**. Bạn sẽ học cách xây dựng một kiến trúc sẵn sàng cho production với:

- **Backend**: Spring Boot REST API trên EC2 với Auto Scaling
- **Frontend**: Ứng dụng React được phục vụ qua CloudFront từ S3
- **Database**: MySQL RDS để lưu trữ dữ liệu
- **API Gateway**: RESTful API với hỗ trợ CORS
- **Load Balancer**: Application Load Balancer cho tính sẵn sàng cao
- **VPC Endpoints**: Kết nối riêng tư đến các dịch vụ AWS (S3, SSM, CloudWatch)

#### Điểm Nổi Bật của Kiến Trúc

- **Infrastructure as Code**: Toàn bộ hạ tầng được định nghĩa trong CloudFormation templates
- **High Availability**: Triển khai Multi-AZ với Auto Scaling Groups
- **Bảo Mật**: Private subnets, security groups, IAM roles, VPC endpoints
- **Giám Sát**: CloudWatch logs, alarms, và metrics
- **Tối Ưu Chi Phí**: VPC endpoints để giảm chi phí data transfer của NAT Gateway
- **Khả Năng Mở Rộng**: Auto Scaling dựa trên CPU metrics

#### Nội Dung Workshop

1. [Tổng Quan Workshop](5.1-Workshop-overview/) - Giới thiệu và tổng quan kiến trúc
2. [Yêu Cầu Trước](5.2-Prerequiste/) - Quyền IAM và triển khai CloudFormation
3. [Triển Khai Backend](5.3-Backend-Deployment/) - Build và deploy ứng dụng Spring Boot
4. [Triển Khai Frontend](5.4-Frontend-Deployment/) - Build và deploy ứng dụng React
5. [Kiểm Thử và Giám Sát](5.5-Testing-Monitoring/) - Kiểm thử ứng dụng và CloudWatch monitoring
6. [Dọn Dẹp](5.6-Cleanup/) - Hướng dẫn dọn dẹp tài nguyên

#### Công Nghệ Sử Dụng

- **Dịch Vụ AWS**: VPC, EC2, RDS, S3, CloudFront, API Gateway, ALB, Auto Scaling, CloudWatch, Systems Manager
- **Backend**: Spring Boot, Java 17, MySQL
- **Frontend**: React, Vite, TypeScript
- **Infrastructure**: CloudFormation, IAM, Security Groups
