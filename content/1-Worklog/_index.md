---
title: "Worklog"
date: 2025-09-10
weight: 1
chapter: false
pre: " <b> 1. </b> "
---

## Overview

This worklog documents my journey through the AWS Cloud Journey internship program, where I completed a comprehensive 12-week learning and hands-on project experience. The program was structured to progressively build knowledge from fundamental AWS concepts to deploying a complete, production-ready web application architecture on AWS.

**Duration:** 12 weeks (approximately 3 months)  
**Completion Date:** November 2025  
**Final Project:** Production-ready AWS web application with CI/CD, monitoring, and security

---

## Weekly Progress

**Week 1:** [Getting familiar with AWS and basic AWS services](1.1-week1/) - Introduction to AWS ecosystem, console navigation, and fundamental services.

**Week 2:** [Basic AWS services exploration](1.2-week2/) - Deep dive into core AWS services and their use cases.

**Week 3:** [Advanced AWS concepts](1.3-week3/) - Exploring advanced features and service integrations.

**Week 4:** [Hands-on labs and practice](1.4-week4/) - Practical exercises and lab sessions to reinforce learning.

**Week 5:** [Advanced labs and workshops](1.5-week5/) - Complex scenarios and multi-service integrations.

**Week 6:** [Database Services on AWS](1.6-week6/) - Amazon RDS, Aurora, Redshift, ElastiCache, and database migration tools (DMS, SCT).

**Week 7:** [Analytics and Data Lake Services](1.7-week7/) - Amazon DynamoDB, AWS Glue, Amazon Athena, Amazon QuickSight, and building data lakes on AWS.

**Week 8:** [Edge Layer and Frontend Infrastructure](1.8-week8/) - Route 53, S3 static hosting, CloudFront CDN, AWS WAF, and ACM Certificate setup.

**Week 9:** [VPC and Networking Core](1.9-week9/) - VPC creation, subnets, Internet Gateway, NAT Gateway, Security Groups, IAM roles, and VPC Flow Logs.

**Week 10:** [Backend and Database Deployment](1.10-week10/) - EC2 backend setup, RDS database configuration, API Gateway, Cognito authentication, and Auto Scaling Group.

**Week 11:** [CI/CD Pipeline and Monitoring](1.11-week11/) - GitLab integration, CodePipeline, CodeBuild, SSH-less deployment, CloudWatch monitoring, CloudTrail, and SNS alerts.

**Week 12:** [Project finalization and documentation](1.12-week12/) - Final testing, documentation, and project handover.

---

## Challenges and Solutions

Throughout the 12-week program, I encountered several technical challenges that required problem-solving and deeper understanding:

### Challenge 1: CloudFront Origin Access Control (OAC) Configuration

**Issue:** Initially confused between Origin Access Identity (OAI) and the newer Origin Access Control (OAC). The OAI method was deprecated, and I needed to use OAC for S3 bucket access.

**Solution:** Researched AWS documentation and learned that OAC is the recommended approach. Updated S3 bucket policies to work with OAC and configured CloudFront distribution accordingly. This required understanding the difference in permission models between OAI and OAC.

### Challenge 2: API Gateway VPC Link Setup for Private Resources

**Issue:** Connecting API Gateway to EC2 instances in private subnet was challenging. Initially tried direct HTTP integration, but private subnet resources are not directly accessible.

**Solution:** Implemented API Gateway VPC Link to establish a connection between API Gateway and the VPC. This required creating a Network Load Balancer (NLB) in the private subnet and configuring the VPC Link to point to the NLB. Learned about the importance of VPC endpoints and private connectivity patterns.

### Challenge 3: RDS Connection from EC2 in Private Subnet

**Issue:** EC2 instance in private subnet couldn't connect to RDS database initially. Security group rules were not properly configured, and I wasn't using the correct RDS endpoint.

**Solution:**

- Verified Security Group rules: RDS Security Group must allow inbound from EC2 Security Group on database port (3306/5432).
- Used AWS Secrets Manager to securely retrieve database credentials instead of hardcoding.
- Tested connectivity using AWS Systems Manager Session Manager to access EC2 without SSH.

### Challenge 4: CodeBuild and CloudFront Cache Invalidation

**Issue:** After deploying frontend updates via CodeBuild to S3, changes weren't reflected immediately due to CloudFront caching. Manual cache invalidation was time-consuming.

**Solution:** Automated CloudFront cache invalidation in the CodeBuild buildspec.yml file. Added AWS CLI command to create invalidation after S3 upload, ensuring users see updated content immediately after deployment.

### Challenge 5: SSH-less Deployment for Backend

**Issue:** Traditional SSH-based deployment was not secure and didn't work well with Auto Scaling Group (instances are ephemeral). Needed a better approach for automated backend deployments.

**Solution:** Implemented SSH-less deployment using AWS Systems Manager (SSM) Run Command. This allowed CodeBuild to execute deployment scripts on EC2 instances without SSH keys. Alternative approach using CodeDeploy was also explored for more complex deployment scenarios.

### Challenge 6: CloudWatch Alarms Not Triggering

**Issue:** Created CloudWatch alarms but notifications weren't being received. Initially, the alarm threshold was too high, and SNS topic subscriptions weren't properly configured.

**Solution:**

- Adjusted alarm thresholds based on actual application metrics (CPU >80% for 5 minutes, RDS connections >80% of max).
- Verified SNS topic subscriptions (email confirmation was required).
- Tested alarms by manually triggering conditions to ensure the notification flow worked correctly.

### Challenge 7: Cognito JWT Token Validation in API Gateway

**Issue:** After setting up Cognito User Pool and Authorizer in API Gateway, API calls with JWT tokens were being rejected with 401 Unauthorized errors.

**Solution:**

- Verified JWT token format and expiration.
- Checked Cognito User Pool App Client settings (allowed OAuth flows, callback URLs).
- Ensured API Gateway Authorizer was correctly configured with the Cognito User Pool ARN.
- Tested token generation and validation flow step-by-step.

### Challenge 8: Auto Scaling Group Launch Template Issues

**Issue:** Auto Scaling Group failed to launch instances. The Launch Template referenced an AMI that wasn't available in the target Availability Zone.

**Solution:**

- Created base AMI in the same region and Availability Zone as the Auto Scaling Group.
- Verified Launch Template configuration (instance type, security groups, IAM role, user data).
- Tested Launch Template manually before using it in Auto Scaling Group.
- Ensured all required resources (Security Groups, IAM roles) existed before ASG creation.

### Challenge 9: VPC Flow Logs Cost Optimization

**Issue:** VPC Flow Logs were generating large amounts of data, leading to high CloudWatch Logs costs.

**Solution:**

- Configured log retention policies (7 days for detailed logs, 30 days for aggregated logs).
- Used S3 as destination for long-term log storage (more cost-effective than CloudWatch Logs).
- Implemented log filtering to capture only relevant traffic patterns.
- Set up lifecycle policies on S3 to transition logs to cheaper storage classes.

### Challenge 10: End-to-End Testing Complexity

**Issue:** Testing the complete flow from Route 53 → CloudFront → WAF → API Gateway → EC2 → RDS was complex, and issues were hard to isolate.

**Solution:**

- Implemented comprehensive logging at each layer (CloudFront access logs, API Gateway logs, EC2 application logs, RDS slow query logs).
- Used CloudWatch dashboards to visualize the entire request flow.
- Created test scripts to validate each component independently before end-to-end testing.
- Documented troubleshooting procedures for common issues at each layer.

---

## Key Learnings

1. **Infrastructure as Code (IaC):** Learned the importance of using CloudFormation for reproducible infrastructure deployments.

2. **Security Best Practices:** Implemented least-privilege IAM policies, network segmentation, and secure credential management with Secrets Manager.

3. **Monitoring and Observability:** Established comprehensive monitoring with CloudWatch, CloudTrail, and VPC Flow Logs for security and performance insights.

4. **CI/CD Automation:** Automated deployment pipelines reduced manual errors and improved deployment speed.

5. **Cost Optimization:** Learned to balance performance, security, and cost through proper resource sizing, caching strategies, and log retention policies.

---

## Conclusion

This 12-week journey provided hands-on experience with a wide range of AWS services and best practices. The final project demonstrates a production-ready architecture with proper security, monitoring, automation, and scalability. The challenges encountered and resolved during this period have significantly strengthened my understanding of cloud architecture and AWS services.
