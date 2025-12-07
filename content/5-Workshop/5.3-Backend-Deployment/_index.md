---
title: "Backend Deployment"
date: 2025-09-09
weight: 3
chapter: false
pre: " <b> 5.3. </b> "
---

#### Deploy Backend Application

In this section, you will build and deploy the **Spring Boot backend application** to EC2 instances. The backend will run in private subnets and be accessible through the Application Load Balancer and API Gateway.

The deployment process includes:

- Building the Spring Boot JAR file
- Uploading the JAR to S3
- Deploying to EC2 instances via Session Manager
- Configuring application properties
- Starting the application service

![overview](/images/5-Workshop/5.3-S3-vpc/diagram2.png)

#### Content

- [Build and Upload Backend](5.3.1-Build-Upload/)
- [Deploy to EC2](5.3.2-Deploy-EC2/)

