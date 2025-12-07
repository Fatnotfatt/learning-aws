---
title: "Prepare Frontend Environment"
date: 2025-09-09
weight: 1
chapter: false
pre: " <b> 5.4.1 </b> "
---

#### Prerequisites

Before building and deploying the frontend, ensure you have:

- **Node.js** and **npm** installed (Node.js 18+ recommended)
- **AWS CLI** configured with appropriate credentials
- **Frontend bucket name** from CloudFormation outputs
- **CloudFront Distribution ID** from CloudFormation outputs

#### Get Required Information

1. Get the frontend S3 bucket name:

```bash
aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='FrontendBucketName'].OutputValue" \
  --output text
```

2. Get the CloudFront Distribution ID:

```bash
aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='CloudFrontDistributionId'].OutputValue" \
  --output text
```

3. Get the API Gateway URL:

```bash
aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='APIGatewayURL'].OutputValue" \
  --output text
```

#### Verify Frontend Environment Variables

Check that the `.env` file in the `FE` directory contains the correct API URL:

```bash
# Windows
type FE\.env

# Linux/Mac
cat FE/.env
```

The file should contain:

```env
VITE_API_URL=https://98385v3jef.execute-api.ap-southeast-1.amazonaws.com/dev/dna_service
VITE_COGNITO_USER_POOL_ID=ap-southeast-1_4osSduRDx
VITE_COGNITO_CLIENT_ID=51alb0b6n4h5unrojbshmqv12r
VITE_COGNITO_REGION=ap-southeast-1
```

**Note:** Update `VITE_API_URL` with the actual API Gateway URL from step 3 above if different.

![Create stack](img.png)
