---
title: "Worklog Week 9"
date: 2025-11-02
weight: 9
chapter: false
pre: " <b> 1.9. </b> "
---

### Week 9 Objectives:

- Build **VPC and Networking Core**: Create VPC with public and private subnets, Internet Gateway, and NAT Gateway.
- Establish secure network boundaries with proper routing and subnet segmentation.
- Configure **Security Groups** for EC2, RDS, and ALB following least-privilege principles.
- Set up **IAM roles and policies** for EC2 instances with custom permissions.
- Enable **VPC Flow Logs** for network traffic monitoring and auditing.

---

### Tasks for the Week:

| Day | Task | Start Date | Completion Date | Reference |
|-----|------|------------|-----------------|-----------|
| 7 | - **VPC Creation & Subnet Configuration:** <br> + Create VPC with CIDR block 10.0.0.0/16 in selected AWS region. <br> + Create public subnet (10.0.1.0/24) in one Availability Zone with appropriate tags. <br> + Create private subnet (10.0.2.0/24) in the same Availability Zone with appropriate tags. <br> + Apply consistent tagging strategy (Name, Environment, Project, etc.) to all resources. <br> + Document subnet allocation and IP addressing scheme. | 02/11/2025 | 02/11/2025 | AWS VPC documentation |
| 8 | - **Internet Gateway Setup:** <br> + Create and attach Internet Gateway to VPC. <br> + Configure public subnet route table to route internet-bound traffic (0.0.0.0/0) to Internet Gateway. <br> + Verify public subnet route table configuration. <br> + Test internet connectivity from public subnet (launch test EC2 instance if needed). <br> + Document routing configuration and gateway associations. | 03/11/2025 | 03/11/2025 | Internet Gateway guide |
| 9 | - **NAT Gateway Configuration:** <br> + Allocate Elastic IP address for NAT Gateway. <br> + Create NAT Gateway in public subnet (10.0.1.0/24). <br> + Configure private subnet route table to route internet-bound traffic (0.0.0.0/0) through NAT Gateway. <br> + Verify private subnet route table configuration. <br> + Test outbound internet connectivity from private subnet (launch test EC2 instance in private subnet). <br> + Verify private subnet instances can reach internet while remaining isolated from inbound connections. | 04/11/2025 | 04/11/2025 | NAT Gateway documentation |
| 10 | - **Security Groups Design & Implementation:** <br> + Create Security Group for EC2 instances: allow inbound from API Gateway/ALB, outbound to RDS and internet via NAT. <br> + Create Security Group for RDS: allow inbound only from EC2 Security Group on database port (3306/5432). <br> + Create Security Group for ALB (if used): allow inbound HTTP/HTTPS from internet, outbound to EC2 Security Group. <br> + Apply least-privilege principle: grant minimum necessary permissions. <br> + Document security group rules and relationships. | 05/11/2025 | 05/11/2025 | Security Groups guide |
| 11 | - **IAM Roles & Policies for EC2:** <br> + Create IAM role for EC2 instances with descriptive name. <br> + Create custom IAM policy for EC2 to access required AWS services (S3, Secrets Manager, CloudWatch, etc.). <br> + Attach IAM role to EC2 instance profile. <br> + Test IAM role permissions from EC2 instance (use AWS CLI or SDK). <br> + Verify EC2 can access Secrets Manager to retrieve database credentials. <br> + Document IAM roles and their permissions. | 06/11/2025 | 06/11/2025 | IAM best practices |
| 12 | - **Network ACLs & VPC Flow Logs:** <br> + Review and configure Network ACLs (optional, default ACLs are usually sufficient). <br> + Test Network ACL rules if custom rules are implemented. <br> + Enable VPC Flow Logs to capture IP traffic flow information. <br> + Configure Flow Logs destination (CloudWatch Logs or S3 bucket). <br> + Review Flow Logs to audit network traffic patterns. <br> + Audit and document all network configurations for security review. <br> - **Week 9 Summary:** VPC and networking core complete, ready for backend and database deployment in Week 10. | 07/11/2025 | 07/11/2025 | VPC Flow Logs documentation |

---

### Achievements in Week 9:

- Successfully created **VPC and subnet infrastructure**:

  - Created VPC with CIDR block 10.0.0.0/16 in selected AWS region.
  - Configured public subnet (10.0.1.0/24) for internet-facing resources with proper tagging.
  - Configured private subnet (10.0.2.0/24) for application servers with proper tagging.
  - Applied consistent tagging strategy across all network resources for better management.

- Set up **Internet Gateway** for public subnet connectivity:

  - Created and attached Internet Gateway to VPC.
  - Configured public subnet route table to route internet traffic (0.0.0.0/0) to Internet Gateway.
  - Verified public subnet instances can access internet directly.
  - Documented routing configuration and gateway associations.

- Configured **NAT Gateway** for private subnet outbound access:

  - Allocated Elastic IP address and created NAT Gateway in public subnet.
  - Configured private subnet route table to route internet traffic through NAT Gateway.
  - Verified private subnet instances can reach internet for outbound connections (updates, downloads, API calls).
  - Confirmed private subnet remains isolated from inbound internet connections (security best practice).

- Implemented **Security Groups** following least-privilege principles:

  - Created Security Group for EC2: allows inbound from API Gateway/ALB, outbound to RDS and internet.
  - Created Security Group for RDS: allows inbound only from EC2 Security Group on database port.
  - Created Security Group for ALB (if used): allows inbound HTTP/HTTPS, outbound to EC2.
  - Applied least-privilege principle: granted minimum necessary permissions for each component.
  - Documented security group rules and relationships for maintainability.

- Configured **IAM roles and policies** for EC2:

  - Created IAM role for EC2 instances with descriptive naming.
  - Created custom IAM policy for EC2 to access required AWS services (S3, Secrets Manager, CloudWatch).
  - Attached IAM role to EC2 instance profile.
  - Tested IAM permissions from EC2 instance and verified access to Secrets Manager.
  - Documented IAM roles and permissions for security audit.

- Enabled **VPC Flow Logs** for network monitoring:

  - Enabled VPC Flow Logs to capture IP traffic flow information.
  - Configured Flow Logs destination (CloudWatch Logs or S3 bucket).
  - Reviewed Flow Logs to audit network traffic patterns and identify anomalies.
  - Audited all network configurations for security compliance.

- After Week 9, the VPC and networking core infrastructure is complete with secure network boundaries, proper routing, and monitoring capabilities. The system is ready for backend and database deployment in Week 10.
