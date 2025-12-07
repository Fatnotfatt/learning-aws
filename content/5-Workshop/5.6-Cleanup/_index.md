---
title: "Clean up"
date: 2025-09-09
weight: 6
chapter: false
pre: " <b> 5.6. </b> "
---

#### Congratulations!

You have successfully completed the Workshop AWS Project deployment! In this workshop, you learned:

- How to deploy a full-stack application on AWS using CloudFormation
- Architecture patterns for high availability and scalability
- Security best practices with private subnets and VPC endpoints
- Monitoring and auto-scaling configurations
- Frontend and backend deployment processes

#### Clean Up Resources

To avoid incurring charges, delete all resources created during this workshop.

#### Method 1: Delete CloudFormation Stack (Recommended)

The easiest way to clean up is to delete the CloudFormation stack:

```bash
aws cloudformation delete-stack \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1
```

**Note:** Some resources may need manual deletion if they have deletion protection or dependencies.

#### Method 2: Manual Cleanup (if needed)

If the stack deletion fails or leaves some resources, manually delete:

1. **Stop EC2 Instances:**

   ```bash
   aws autoscaling update-auto-scaling-group \
     --auto-scaling-group-name <ASG_NAME> \
     --min-size 0 \
     --desired-capacity 0 \
     --region ap-southeast-1
   ```

2. **Delete S3 Buckets:**

   ```bash
   # Empty frontend bucket
   aws s3 rm s3://workshop-aws-dev-frontend-502310717700-ap-southeast-1/ --recursive
   aws s3 rb s3://workshop-aws-dev-frontend-502310717700-ap-southeast-1

   # Empty backend bucket
   aws s3 rm s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/ --recursive
   aws s3 rb s3://workshop-aws-dev-backend-502310717700-ap-southeast-1
   ```

3. **Disable and Delete CloudFront Distribution:**

   - First disable the distribution (wait for it to be disabled)
   - Then delete it

4. **Delete RDS Database:**

   - Take a final snapshot if needed
   - Delete the database instance (may take 10-15 minutes)

5. **Delete API Gateway:**

   - Delete the REST API

6. **Delete Load Balancer:**

   - Delete the Application Load Balancer

7. **Delete VPC Endpoints:**

   - Delete all VPC endpoints

8. **Delete CloudWatch Logs:**
   ```bash
   aws logs delete-log-group \
     --log-group-name /aws/workshop-aws/dev/application \
     --region ap-southeast-1
   ```

#### Verify Cleanup

Check the following services to ensure all resources are deleted:

- **EC2**: No instances, security groups, or load balancers
- **RDS**: No database instances
- **S3**: No buckets
- **CloudFront**: No distributions
- **API Gateway**: No APIs
- **VPC**: VPC and related resources (if not managed by CloudFormation)
- **CloudWatch**: No log groups
- **IAM**: Review and delete custom roles/policies if created manually

#### Cost Verification

After cleanup, verify in **AWS Cost Explorer** that no charges are accruing for the deleted resources.

![delete stack](/images/5-Workshop/5.6-Cleanup/delete-stack.png)
