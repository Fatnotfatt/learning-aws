---
title: "Workshop"
date: 2025-09-10
weight: 5
chapter: false
pre: " <b> 5. </b> "
---

# Full-Stack Web Application Deployment on AWS

#### Overview

This workshop demonstrates how to deploy a complete **full-stack web application** on AWS using **Infrastructure as Code (CloudFormation)**. You will learn to build a production-ready architecture with:

- **Backend**: Spring Boot REST API on EC2 with Auto Scaling
- **Frontend**: React application served via CloudFront from S3
- **Database**: MySQL RDS for data persistence
- **API Gateway**: RESTful API with CORS support
- **Load Balancer**: Application Load Balancer for high availability
- **VPC Endpoints**: Private connectivity to AWS services (S3, SSM, CloudWatch)

#### Architecture Highlights

- **Infrastructure as Code**: Entire infrastructure defined in CloudFormation templates
- **High Availability**: Multi-AZ deployment with Auto Scaling Groups
- **Security**: Private subnets, security groups, IAM roles, VPC endpoints
- **Monitoring**: CloudWatch logs, alarms, and metrics
- **Cost Optimization**: VPC endpoints to reduce NAT Gateway data transfer costs
- **Scalability**: Auto Scaling based on CPU metrics

#### Workshop Content

1. [Workshop Overview](5.1-Workshop-overview/) - Introduction and architecture overview
2. [Prerequisites](5.2-Prerequiste/) - IAM permissions and CloudFormation deployment
3. [Backend Deployment](5.3-Backend-Deployment/) - Build and deploy Spring Boot application
4. [Frontend Deployment](5.4-Frontend-Deployment/) - Build and deploy React application
5. [Testing and Monitoring](5.5-Testing-Monitoring/) - Application testing and CloudWatch monitoring
6. [Clean up](5.6-Cleanup/) - Resource cleanup instructions

#### Technologies Used

- **AWS Services**: VPC, EC2, RDS, S3, CloudFront, API Gateway, ALB, Auto Scaling, CloudWatch, Systems Manager
- **Backend**: Spring Boot, Java 17, MySQL
- **Frontend**: React, Vite, TypeScript
- **Infrastructure**: CloudFormation, IAM, Security Groups
