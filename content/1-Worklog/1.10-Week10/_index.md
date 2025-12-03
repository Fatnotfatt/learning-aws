---
title: "Worklog Week 10"
date: 2025-11-09
weight: 1
chapter: false
pre: " <b> 1.10. </b> "
---

### Week 10 Objectives:

- Deploy **Backend Layer**: EC2 instances in private subnet with application runtime and Auto Scaling configuration.
- Set up **Amazon RDS** database in private subnet with proper configuration and parameter groups.
- Deploy backend application and establish connectivity between EC2 and RDS using Secrets Manager.
- Configure **API Gateway** REST API with integration to EC2 backend.
- Integrate **Amazon Cognito** User Pool with API Gateway for authentication and authorization.
- Configure **Auto Scaling Group** for EC2 instances with Launch Template for scalability.

---

### Tasks for the Week:

| Day | Task | Start Date | Completion Date | Reference |
|-----|------|------------|-----------------|-----------|
| 13 | - **RDS Database Setup:** <br> + Create RDS subnet group spanning private subnet (10.0.2.0/24). <br> + Launch RDS instance (MySQL/PostgreSQL) in private subnet with appropriate instance class. <br> + Configure RDS parameter group with database-specific settings (character set, timezone, etc.). <br> + Set up automated backups, encryption at rest, and Multi-AZ deployment (optional for cost optimization). <br> + Configure RDS security group to allow connections only from EC2 Security Group. <br> + Store initial database credentials in AWS Secrets Manager. | 09/11/2025 | 09/11/2025 | RDS documentation |
| 14 | - **EC2 Backend Instance Setup:** <br> + Launch EC2 instance in private subnet (10.0.2.0/24) with appropriate instance type. <br> + Install application runtime environment: Java/Python/Node.js based on application requirements. <br> + Install and configure application dependencies and libraries. <br> + Configure EC2 instance with IAM role (created in Week 9) for AWS service access. <br> + Create base AMI from configured EC2 instance for Auto Scaling Group (to be used on Day 18). <br> + Document EC2 configuration and application setup steps. | 10/11/2025 | 10/11/2025 | EC2 documentation |
| 15 | - **Backend Application Deployment:** <br> + Deploy backend application code to EC2 instance (manual deployment for initial setup). <br> + Configure application to connect to RDS database using credentials from Secrets Manager. <br> + Test database connectivity from EC2 instance (verify connection string, credentials retrieval). <br> + Configure application environment variables and configuration files. <br> + Test basic application functionality and database operations (CRUD operations). <br> + Document deployment process and application configuration. | 11/11/2025 | 11/11/2025 | Application deployment guide |
| 16 | - **API Gateway REST API Configuration:** <br> + Create REST API in API Gateway with appropriate name and description. <br> + Define API resources and methods (GET, POST, PUT, DELETE) based on application requirements. <br> + Configure API Gateway integration with EC2 backend (HTTP/HTTPS integration or VPC Link for private resources). <br> + Set up API Gateway VPC Link to connect to private subnet resources (EC2). <br> + Enable CORS for frontend access (configure CORS headers: Access-Control-Allow-Origin, etc.). <br> + Test API endpoints and verify integration with EC2 backend. | 12/11/2025 | 12/11/2025 | API Gateway documentation |
| 17 | - **Amazon Cognito Integration:** <br> + Create Cognito User Pool for user authentication with appropriate name. <br> + Configure user pool settings: password policies (minimum length, complexity), MFA (optional), email verification. <br> + Create Cognito User Pool App Client for application integration. <br> + Configure Cognito Authorizer in API Gateway for authenticated API access. <br> + Test user registration flow: create test user in Cognito User Pool. <br> + Test login flow: authenticate user and obtain JWT tokens. <br> + Test authenticated API access: use JWT token to access protected API endpoints. | 13/11/2025 | 13/11/2025 | Cognito documentation |
| 18 | - **Auto Scaling Group Configuration:** <br> + Create Launch Template based on base AMI created on Day 14. <br> + Configure Launch Template with instance type, security groups, IAM role, and user data scripts. <br> + Create Auto Scaling Group with Launch Template in private subnet. <br> + Configure Auto Scaling policies: target tracking (CPU utilization, network in/out), step scaling, or scheduled scaling. <br> + Set minimum, desired, and maximum capacity for Auto Scaling Group. <br> + Test scale-out: trigger scaling by increasing load (or manually adjust desired capacity). <br> + Test scale-in: reduce load and verify instances are terminated automatically. <br> - **Week 10 Summary:** Backend and database layer complete, ready for CI/CD and monitoring setup in Week 11. | 14/11/2025 | 14/11/2025 | Auto Scaling documentation |

---

### Achievements in Week 10:

- Successfully deployed **Amazon RDS database**:

  - Created RDS subnet group in private subnet for database isolation.
  - Launched RDS instance (MySQL/PostgreSQL) with appropriate instance class and configuration.
  - Configured RDS parameter group with database-specific settings.
  - Set up automated backups, encryption at rest, and monitoring.
  - Configured RDS security group to allow connections only from EC2 Security Group.
  - Stored database credentials securely in AWS Secrets Manager.

- Set up **EC2 backend infrastructure**:

  - Launched EC2 instance in private subnet with appropriate instance type.
  - Installed and configured application runtime environment (Java/Python/Node.js).
  - Configured EC2 instance with IAM role for AWS service access.
  - Created base AMI from configured EC2 instance for Auto Scaling Group.
  - Documented EC2 configuration and application setup procedures.

- Deployed **backend application**:

  - Deployed backend application code to EC2 instance.
  - Configured application to connect to RDS using credentials from Secrets Manager.
  - Tested database connectivity and verified connection functionality.
  - Tested basic application functionality and database operations (CRUD).
  - Documented deployment process and application configuration.

- Configured **API Gateway REST API**:

  - Created REST API with resources, methods, and integration points.
  - Set up API Gateway VPC Link to connect to private subnet resources (EC2).
  - Configured API Gateway integration with EC2 backend using HTTP/HTTPS.
  - Enabled CORS for frontend access with proper headers.
  - Tested API endpoints and verified integration with EC2 backend.

- Integrated **Amazon Cognito** for authentication:

  - Created Cognito User Pool with password policies, MFA, and email verification.
  - Created Cognito User Pool App Client for application integration.
  - Configured Cognito Authorizer in API Gateway for authenticated API access.
  - Tested user registration, login, and authenticated API access flows.
  - Established secure user authentication and authorization.

- Configured **Auto Scaling Group** for scalability:

  - Created Launch Template based on base AMI for consistent instance configuration.
  - Created Auto Scaling Group with Launch Template in private subnet.
  - Configured Auto Scaling policies (target tracking, step scaling) for automatic scaling.
  - Set appropriate capacity limits (minimum, desired, maximum).
  - Tested scale-out and scale-in functionality to verify automatic scaling.

- After Week 10, the backend and database layer is operational with scalable infrastructure. The application is ready for CI/CD automation and comprehensive monitoring in Week 11.
