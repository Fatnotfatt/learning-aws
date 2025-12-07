---
title: "Verify Full Stack Deployment"
date: 2025-09-09
weight: 4
chapter: false
pre: " <b> 5.4.4 </b> "
---

#### Test Complete Application Flow

In this section, you will verify that the entire application stack is working correctly, from frontend to backend to database.

#### Step 1: Verify Backend Health

Test the backend health endpoint through API Gateway:

```bash
API_URL=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='APIGatewayURL'].OutputValue" \
  --output text)

curl ${API_URL}/dna_service/actuator/health
```

**Expected Result:** `{"status":"UP"}`

#### Step 2: Test Frontend Access

1. Open the CloudFront URL in your browser:

```
https://d3gmmg22uirq0t.cloudfront.net
```

2. Open browser Developer Tools (F12) and check the Console tab for any errors.

3. Verify the API URL is correctly configured by checking network requests.

#### Step 3: Test User Registration/Login

1. Try to register a new user or log in with existing credentials.

2. Verify that:
   - API calls are successful (check Network tab in DevTools)
   - JWT token is stored in localStorage
   - User is redirected to the appropriate page after login

#### Step 4: Verify Database Connection

Connect to EC2 via Session Manager and check application logs:

```bash
# Connect to EC2
aws ssm start-session --target <INSTANCE_ID> --region ap-southeast-1

# On EC2, check logs
tail -50 /opt/workshop/application.log | grep -i "database\|connection\|error"
```

**Expected Result:** No database connection errors in logs.

#### Step 5: Monitor Application

1. Check CloudWatch Logs:

```bash
aws logs tail /aws/workshop-aws/dev/application --follow --region ap-southeast-1
```

2. Check EC2 metrics in CloudWatch console:
   - CPU utilization
   - Network in/out
   - Application health

#### Troubleshooting Common Issues

**Frontend can't connect to API:**
- Verify `VITE_API_URL` in `.env` matches API Gateway URL
- Check CORS configuration in backend
- Verify API Gateway integration with ALB

**Backend not responding:**
- Check EC2 instance is running
- Verify application is running: `ps aux | grep java`
- Check application logs: `tail -100 /opt/workshop/application.log`

**Database connection errors:**
- Verify RDS security group allows traffic from EC2 security group
- Check RDS endpoint is correct in `application.properties`
- Verify database credentials

#### Section Summary

You have successfully deployed and verified the complete full-stack application. The architecture includes:
- Frontend served via CloudFront from S3
- Backend running on EC2 in private subnets
- API Gateway routing requests to ALB
- RDS MySQL database for data persistence
- VPC endpoints for secure AWS service access

#### Section Summary

You have successfully deployed and verified the complete full-stack application. The architecture includes:
- Frontend served via CloudFront from S3
- Backend running on EC2 in private subnets
- API Gateway routing requests to ALB
- RDS MySQL database for data persistence
- VPC endpoints for secure AWS service access
