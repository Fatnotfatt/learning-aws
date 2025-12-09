---
title: "Prerequiste"
date: 2025-09-09
weight: 2
chapter: false
pre: " <b> 5.2. </b> "
---

#### IAM permissions

Add the following IAM permission policy to your user account to deploy and cleanup this workshop.

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "cloudformation:*",
                "cloudwatch:*",
                "ec2:*",
                "iam:*",
                "s3:*",
                "rds:*",
                "apigateway:*",
                "cloudfront:*",
                "ssm:*",
                "logs:*",
                "autoscaling:*",
                "elasticloadbalancing:*"
            ],
            "Resource": "*"
        }
    ]
}
```

#### Provision resources using CloudFormation

In this workshop, we will use **Singapore region (ap-southeast-1)**.

To deploy the infrastructure, use the following command:

```bash
aws cloudformation create-stack \
  --stack-name workshop-aws-dev \
  --template-body file://aws/infrastructure.yaml \
  --parameters file://aws/parameters.json \
  --capabilities CAPABILITY_NAMED_IAM \
  --region ap-southeast-1
```

Or update an existing stack:

```bash
aws cloudformation update-stack \
  --stack-name workshop-aws-dev \
  --template-body file://aws/infrastructure.yaml \
  --parameters file://aws/parameters.json \
  --capabilities CAPABILITY_NAMED_IAM \
  --region ap-southeast-1
```

#### Prerequisites

Before deploying, ensure you have:

- **AWS CLI** installed and configured with appropriate credentials
- **IAM Permissions** as specified in the IAM permissions section above
- **Parameters File**: `aws/parameters.json` configured with your values
- **EC2 Key Pair**: Create a key pair in AWS Console (used for EC2 access, though we'll use SSM Session Manager)

#### CloudFormation Stack Deployment

The **CloudFormation** deployment requires about **20-25 minutes** to complete. The stack will create:

- **1 VPC** with public and private subnets across 2 Availability Zones
- **1 Auto Scaling Group** with EC2 instances (t3.micro)
- **1 RDS MySQL** database instance (db.t3.micro)
- **2 S3 Buckets** (frontend and backend)
- **1 CloudFront Distribution** for frontend
- **1 Application Load Balancer** for backend
- **1 API Gateway** REST API
- **5 VPC Endpoints** (S3 Gateway, SSM, SSM Messages, EC2 Messages, CloudWatch Logs)
- **IAM Roles and Policies** for EC2, Lambda, and other services
- **Security Groups** for network access control
- **Route Tables** and **Internet Gateway** for networking

#### Verify Deployment

After the stack creation completes, verify the following resources:

- **VPC**: Check VPC console for `workshop-aws-dev-vpc`
- **EC2 Instances**: Check Auto Scaling Group for running instances
- **RDS**: Verify database endpoint in RDS console
- **S3 Buckets**: Confirm frontend and backend buckets exist
- **CloudFront**: Check distribution status
- **API Gateway**: Verify REST API is deployed

![complete](/images/5-Workshop/5.2-Prerequisite/complete.png)
