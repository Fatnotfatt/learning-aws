---
title: "Introduction"
date: 2025-09-09
weight: 1
chapter: false
pre: " <b> 5.1. </b> "
---

#### Workshop AWS Project Overview

This workshop demonstrates how to deploy a complete **full-stack web application** on AWS using **Infrastructure as Code (CloudFormation)**. You will learn to build a production-ready architecture with:

- **Backend**: Spring Boot REST API running on EC2 instances in private subnets
- **Frontend**: React application served via CloudFront from S3
- **Database**: MySQL RDS instance for data persistence
- **API Gateway**: RESTful API Gateway for frontend-backend communication
- **Load Balancer**: Application Load Balancer for high availability

#### Architecture Components

- **VPC**: Custom VPC with public and private subnets across 2 Availability Zones
- **EC2 Auto Scaling Group**: Backend application servers with auto-scaling capabilities
- **RDS MySQL**: Managed database service for application data
- **S3 Buckets**: Frontend static hosting and backend artifact storage
- **CloudFront**: CDN for global content delivery
- **API Gateway**: RESTful API endpoint with CORS support
- **VPC Endpoints**: Private connectivity to AWS services (S3 Gateway, SSM, SSM Messages, EC2 Messages, CloudWatch Logs)
- **Systems Manager**: Secure access to EC2 instances without SSH keys

#### Key Features

- **Infrastructure as Code**: Entire infrastructure defined in CloudFormation
- **High Availability**: Multi-AZ deployment with Auto Scaling
- **Security**: Private subnets, security groups, IAM roles, VPC endpoints
- **Monitoring**: CloudWatch logs, alarms, and metrics
- **Cost Optimization**: VPC endpoints to reduce NAT Gateway data transfer costs
- **Scalability**: Auto Scaling based on CPU metrics

![overview](/images/5-Workshop/5.1-Workshop-overview/diagram1.png)
