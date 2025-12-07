---
title: "Build và Upload Backend"
date: 2025-09-09
weight: 1
chapter: false
pre: " <b> 5.3.1 </b> "
---

#### Build Ứng Dụng Spring Boot

Trong phần này, bạn sẽ build ứng dụng Spring Boot backend thành file JAR và upload lên S3 để triển khai.

#### Bước 1: Build File JAR

1. Di chuyển vào thư mục backend:

```bash
cd BE/workshop_BE
```

2. Clean và build project:

**Trên Windows:**

```powershell
.\mvnw.cmd clean package -DskipTests
```

**Trên Linux/Mac:**

```bash
./mvnw clean package -DskipTests
```

3. Xác minh file JAR đã được tạo:

```bash
# Windows
dir target\workshop-0.0.1-SNAPSHOT.jar

# Linux/Mac
ls -lh target/workshop-0.0.1-SNAPSHOT.jar
```

**Kết Quả Mong Đợi:** File `workshop-0.0.1-SNAPSHOT.jar` nên có trong thư mục `target`.

#### Bước 2: Upload JAR lên S3

1. Lấy tên backend bucket từ CloudFormation outputs:

```bash
aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='BackendBucketName'].OutputValue" \
  --output text
```

2. Upload file JAR lên S3:

```bash
# Windows
aws s3 cp BE\workshop_BE\target\workshop-0.0.1-SNAPSHOT.jar s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/jars/ --region ap-southeast-1

# Linux/Mac
aws s3 cp BE/workshop_BE/target/workshop-0.0.1-SNAPSHOT.jar s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/jars/ --region ap-southeast-1
```

**Kết Quả Mong Đợi:** `upload: .../workshop-0.0.1-SNAPSHOT.jar to s3://...`

3. Xác minh upload:

```bash
aws s3 ls s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/jars/ --region ap-southeast-1
```

#### Bước 3: Lấy EC2 Instance ID

Bạn sẽ cần EC2 instance ID để triển khai ứng dụng. Lấy nó từ Auto Scaling Group:

```bash
aws autoscaling describe-auto-scaling-groups \
  --region ap-southeast-1 \
  --query "AutoScalingGroups[?contains(AutoScalingGroupName, 'workshop-aws-dev')].Instances[0].InstanceId" \
  --output text
```

Hoặc liệt kê tất cả instances:

```bash
aws ec2 describe-instances \
  --region ap-southeast-1 \
  --filters "Name=tag:Name,Values=*workshop-aws-dev*" \
  --query "Reservations[*].Instances[*].[InstanceId,State.Name]" \
  --output table
```

**Lưu ý:** Lưu instance ID cho phần tiếp theo.

![endpoint](img_1.png)
