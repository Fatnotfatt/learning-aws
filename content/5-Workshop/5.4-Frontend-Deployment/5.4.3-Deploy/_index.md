---
title: "Deploy to S3 and CloudFront"
date: 2025-09-09
weight: 3
chapter: false
pre: " <b> 5.4.3 </b> "
---

#### Upload Frontend to S3

1. Get the frontend bucket name (if you don't have it):

```bash
BUCKET_NAME=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='FrontendBucketName'].OutputValue" \
  --output text)

echo "Bucket: $BUCKET_NAME"
```

2. Upload the built files to S3:

```bash
# Windows
aws s3 sync dist\ s3://$BUCKET_NAME/ --delete --region ap-southeast-1

# Linux/Mac
aws s3 sync dist/ s3://$BUCKET_NAME/ --delete --region ap-southeast-1
```

**Expected Result:** Files are uploaded to S3 with output like:
```
upload: dist/index.html to s3://...
upload: dist/assets/...
```

3. Verify the upload:

```bash
aws s3 ls s3://$BUCKET_NAME/ --recursive --region ap-southeast-1
```

#### Invalidate CloudFront Cache

1. Get the CloudFront Distribution ID:

```bash
DIST_ID=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='CloudFrontDistributionId'].OutputValue" \
  --output text)

echo "Distribution ID: $DIST_ID"
```

2. Create a CloudFront invalidation:

```bash
aws cloudfront create-invalidation \
  --distribution-id $DIST_ID \
  --paths "/*" \
  --region ap-southeast-1
```

**Expected Result:** An invalidation ID is returned. The invalidation typically takes 1-2 minutes to complete.

3. Check invalidation status (optional):

```bash
INVALIDATION_ID=$(aws cloudfront list-invalidations \
  --distribution-id $DIST_ID \
  --region ap-southeast-1 \
  --query "InvalidationList.Items[0].Id" \
  --output text)

aws cloudfront get-invalidation \
  --distribution-id $DIST_ID \
  --id $INVALIDATION_ID \
  --region ap-southeast-1
```

#### Verify Frontend Deployment

1. Get the CloudFront domain name:

```bash
CLOUDFRONT_URL=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='CloudFrontDomainName'].OutputValue" \
  --output text)

echo "Frontend URL: https://$CLOUDFRONT_URL"
```

2. Open the frontend URL in your browser:

```
https://d3gmmg22uirq0t.cloudfront.net
```

3. Test the application:
   - The frontend should load
   - Try logging in or registering a new user
   - Verify API calls are working (check browser console for errors)

![check bucket](img.png)

#### Section Summary

Congratulations! You have successfully deployed the React frontend application to S3 and CloudFront. The frontend is now accessible globally via CloudFront CDN, providing low latency and high availability. The application communicates with the backend through API Gateway.
