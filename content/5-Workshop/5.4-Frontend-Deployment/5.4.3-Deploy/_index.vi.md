---
title: "Triển Khai lên S3 và CloudFront"
date: 2025-09-09
weight: 3
chapter: false
pre: " <b> 5.4.3 </b> "
---

#### Upload Frontend lên S3

1. Lấy tên frontend bucket (nếu bạn chưa có):

```bash
BUCKET_NAME=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='FrontendBucketName'].OutputValue" \
  --output text)

echo "Bucket: $BUCKET_NAME"
```

2. Upload các file đã build lên S3:

```bash
# Windows
aws s3 sync dist\ s3://$BUCKET_NAME/ --delete --region ap-southeast-1

# Linux/Mac
aws s3 sync dist/ s3://$BUCKET_NAME/ --delete --region ap-southeast-1
```

**Kết Quả Mong Đợi:** Các file được upload lên S3 với output như:
```
upload: dist/index.html to s3://...
upload: dist/assets/...
```

3. Xác minh upload:

```bash
aws s3 ls s3://$BUCKET_NAME/ --recursive --region ap-southeast-1
```

#### Invalidate CloudFront Cache

1. Lấy CloudFront Distribution ID:

```bash
DIST_ID=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='CloudFrontDistributionId'].OutputValue" \
  --output text)

echo "Distribution ID: $DIST_ID"
```

2. Tạo CloudFront invalidation:

```bash
aws cloudfront create-invalidation \
  --distribution-id $DIST_ID \
  --paths "/*" \
  --region ap-southeast-1
```

**Kết Quả Mong Đợi:** Một invalidation ID được trả về. Invalidation thường mất 1-2 phút để hoàn thành.

3. Kiểm tra trạng thái invalidation (tùy chọn):

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

#### Xác Minh Triển Khai Frontend

1. Lấy CloudFront domain name:

```bash
CLOUDFRONT_URL=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='CloudFrontDomainName'].OutputValue" \
  --output text)

echo "Frontend URL: https://$CLOUDFRONT_URL"
```

2. Mở frontend URL trong trình duyệt:

```
https://d3gmmg22uirq0t.cloudfront.net
```

3. Kiểm thử ứng dụng:
   - Frontend nên load
   - Thử đăng nhập hoặc đăng ký user mới
   - Xác minh API calls đang hoạt động (kiểm tra browser console cho lỗi)

![check bucket](/images/5-Workshop/5.4-S3-onprem/check-bucket.png)

#### Tóm Tắt Phần

Chúc mừng! Bạn đã triển khai thành công ứng dụng React frontend lên S3 và CloudFront. Frontend hiện có thể truy cập toàn cầu qua CloudFront CDN, cung cấp độ trễ thấp và tính sẵn sàng cao. Ứng dụng giao tiếp với backend qua API Gateway.

