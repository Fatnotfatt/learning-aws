---
title: "Worklog Week 11"
date: 2025-11-16
weight: 11
chapter: false
pre: " <b> 1.11. </b> "
---

### Week 11 Objectives:

- Set up **CI/CD Pipeline**: Connect GitLab repository to AWS CodePipeline for automated deployments.
- Configure **AWS CodeBuild** for frontend and backend builds with automatic S3 upload and CloudFront invalidation.
- Implement **SSH-less deployment** for backend using AWS Systems Manager or CodeDeploy.
- Set up comprehensive **monitoring** with CloudWatch logs, metrics, and enhanced monitoring for EC2 and RDS.
- Configure **AWS CloudTrail** for audit logging and security compliance.
- Set up **SNS Alerts** with CloudWatch alarms for critical metrics (EC2 CPU, RDS connections, API 5xx errors).
- Perform **end-to-end testing** and create final project documentation with complete architecture diagram.

---

### Tasks for the Week:

| Day | Task | Start Date | Completion Date | Reference |
|-----|------|------------|-----------------|-----------|
| 19 | - **GitLab to CodePipeline Integration:** <br> + Create GitLab repository for the project (if not already created). <br> + Set up AWS CodePipeline with source stage connected to GitLab repository. <br> + Configure webhook or polling for automatic pipeline triggers on code commits. <br> + Create S3 bucket for pipeline artifacts storage. <br> + Test pipeline trigger by making a test commit to GitLab repository. <br> + Verify CodePipeline can successfully connect to GitLab and retrieve source code. | 16/11/2025 | 16/11/2025 | CodePipeline documentation |
| 20 | - **CodeBuild for Frontend:** <br> + Create CodeBuild project for frontend build process. <br> + Configure buildspec.yml file for frontend build steps (install dependencies, build assets, optimize). <br> + Set up CodeBuild environment with appropriate Docker image (Node.js, npm, etc.). <br> + Configure build output to upload built files to S3 bucket (FE Bucket). <br> + Set up automatic CloudFront invalidation after S3 upload (invalidate cache for updated files). <br> + Test frontend build process and verify files are uploaded to S3 and CloudFront cache is invalidated. | 17/11/2025 | 17/11/2025 | CodeBuild documentation |
| 21 | - **CodeBuild for Backend & SSH-less Deployment:** <br> + Create CodeBuild project for backend build process. <br> + Configure buildspec.yml for backend build steps (compile, test, package artifacts). <br> + Set up CodeBuild environment for backend (Java/Python/Node.js based on application). <br> + Configure artifact upload to S3 or CodeDeploy. <br> + Implement SSH-less deployment using AWS Systems Manager (SSM) or CodeDeploy: <br>   - Option 1: Use SSM Run Command to deploy to EC2 instances without SSH. <br>   - Option 2: Use CodeDeploy to deploy application to Auto Scaling Group. <br> + Test backend build and deployment process end-to-end. | 18/11/2025 | 18/11/2025 | CodeDeploy / SSM documentation |
| 22 | - **CloudWatch Logs & Metrics Setup:** <br> + Create CloudWatch log groups for EC2 application logs. <br> + Configure CloudWatch agent on EC2 instances to send logs and custom metrics. <br> + Set up CloudWatch metrics for EC2: CPU utilization, memory, disk I/O, network. <br> + Enable RDS Enhanced Monitoring for detailed database metrics. <br> + Configure API Gateway access logs to CloudWatch Logs. <br> + Create CloudWatch dashboards for monitoring application health and performance. <br> + Configure log retention policies for cost optimization. | 19/11/2025 | 19/11/2025 | CloudWatch documentation |
| 23 | - **CloudTrail & Audit Dashboard:** <br> + Enable AWS CloudTrail for API call logging across all AWS services. <br> + Create CloudTrail trail with S3 bucket for log storage. <br> + Configure CloudTrail log file validation and encryption. <br> + Set up CloudWatch Logs integration for CloudTrail events (optional). <br> + Create CloudWatch dashboard for audit and security monitoring. <br> + Review CloudTrail logs to verify API call logging is working correctly. <br> + Document CloudTrail configuration and log retention policies. | 20/11/2025 | 20/11/2025 | CloudTrail documentation |
| 24 | - **SNS Alerts & CloudWatch Alarms:** <br> + Create SNS topic for alarm notifications. <br> + Subscribe email/SMS endpoints to SNS topic. <br> + Create CloudWatch alarm for EC2 CPU utilization (threshold: >80% for 5 minutes). <br> + Create CloudWatch alarm for RDS database connections (threshold: >80% of max connections). <br> + Create CloudWatch alarm for API Gateway 5xx errors (threshold: >10 errors in 5 minutes). <br> + Configure alarm actions to send notifications via SNS. <br> + Test alarms by triggering conditions and verify email/SMS notifications are received. | 21/11/2025 | 21/11/2025 | CloudWatch Alarms & SNS |
| 25 | - **End-to-End Testing & Final Documentation:** <br> + Perform comprehensive end-to-end testing: Users → Route 53 → CloudFront → WAF → API Gateway → EC2 → RDS. <br> + Test CI/CD pipeline with code changes: verify automated frontend and backend deployments. <br> + Test monitoring and alerting: trigger alarms and verify SNS notifications are received. <br> + Test security: verify IAM permissions, Cognito authentication, Secrets Manager access, WAF protection. <br> + Test scalability: verify Auto Scaling Group responds to load changes. <br> + Create final architecture diagram with all components, data flows, and resource relationships. <br> + Write comprehensive project documentation: deployment procedures, troubleshooting guides, runbooks, and architecture overview. <br> + Prepare Worklog summary for all 4 weeks (Week 8-11). <br> - **Week 11 Summary:** Complete AWS web application architecture deployed with CI/CD, monitoring, security, and automation. Project ready for production use. | 22/11/2025 | 22/11/2025 | Project documentation |

---

### Achievements in Week 11:

- Successfully set up **CI/CD Pipeline**:

  - Connected GitLab repository to AWS CodePipeline for automated deployments.
  - Configured automatic pipeline triggers on code commits (webhook or polling).
  - Created S3 bucket for pipeline artifacts storage.
  - Verified end-to-end pipeline connectivity and source code retrieval.

- Configured **CodeBuild for Frontend**:

  - Created CodeBuild project with buildspec.yml for frontend build automation.
  - Configured build environment with appropriate Docker image and dependencies.
  - Set up automatic S3 upload of built frontend files.
  - Implemented automatic CloudFront cache invalidation after deployments.
  - Verified frontend build and deployment process works correctly.

- Implemented **CodeBuild for Backend with SSH-less Deployment**:

  - Created CodeBuild project for backend build automation.
  - Configured buildspec.yml for backend compilation, testing, and packaging.
  - Implemented SSH-less deployment using AWS Systems Manager (SSM) or CodeDeploy.
  - Eliminated need for SSH keys and improved security posture.
  - Verified backend build and deployment process works end-to-end.

- Set up comprehensive **CloudWatch Monitoring**:

  - Created CloudWatch log groups for EC2 application logs.
  - Configured CloudWatch agent on EC2 instances for logs and custom metrics.
  - Set up CloudWatch metrics for EC2 (CPU, memory, disk, network).
  - Enabled RDS Enhanced Monitoring for detailed database insights.
  - Configured API Gateway access logs to CloudWatch Logs.
  - Created CloudWatch dashboards for real-time monitoring.
  - Configured log retention policies for cost optimization.

- Configured **CloudTrail for Audit and Compliance**:

  - Enabled CloudTrail for comprehensive API call logging.
  - Created CloudTrail trail with S3 bucket for secure log storage.
  - Configured log file validation and encryption.
  - Set up CloudWatch dashboard for audit monitoring.
  - Established audit trail for security and compliance requirements.

- Implemented **SNS Alerts and CloudWatch Alarms**:

  - Created SNS topic for alarm notifications with email/SMS subscriptions.
  - Created CloudWatch alarm for EC2 CPU utilization monitoring.
  - Created CloudWatch alarm for RDS database connection monitoring.
  - Created CloudWatch alarm for API Gateway 5xx error detection.
  - Configured alarm actions to send notifications via SNS.
  - Tested alarms and verified notification delivery.

- Performed **comprehensive end-to-end testing**:

  - Verified complete application flow: Users → Route 53 → CloudFront → WAF → API Gateway → EC2 → RDS.
  - Tested CI/CD pipeline with code changes and verified automated deployments.
  - Tested monitoring and alerting: triggered alarms and verified SNS notifications.
  - Tested security: verified IAM permissions, Cognito authentication, Secrets Manager, WAF protection.
  - Tested scalability: verified Auto Scaling Group responds to load changes.

- Created **final project documentation**:

  - Created comprehensive architecture diagram with all components, data flows, and resource relationships.
  - Documented deployment procedures, troubleshooting guides, and runbooks.
  - Prepared architecture overview and system design documentation.
  - Completed Worklog summary for all 4 weeks (Week 8-11).

- After Week 11, the complete AWS web application architecture is fully deployed, monitored, secured, and automated:

  - **Edge Layer**: Route 53, CloudFront, AWS WAF, ACM Certificate, S3 (Frontend).
  - **Networking Layer**: VPC, public/private subnets, Internet Gateway, NAT Gateway, Security Groups, VPC Flow Logs.
  - **Compute & Database Layer**: EC2 (with Auto Scaling), RDS, API Gateway, Cognito.
  - **CI/CD Pipeline**: GitLab, CodePipeline, CodeBuild (Frontend & Backend), SSH-less deployment.
  - **Monitoring & Security**: CloudWatch (Logs, Metrics, Dashboards, Alarms), CloudTrail, SNS Alerts, IAM, Secrets Manager.

  The project demonstrates a production-ready, scalable, secure, and well-monitored AWS architecture following best practices with complete automation and observability.
