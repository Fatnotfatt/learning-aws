---
title: "Build and Upload Backend"
date: 2025-09-09
weight: 1
chapter: false
pre: " <b> 5.3.1 </b> "
---

#### Build Spring Boot Application

In this section, you will build the Spring Boot backend application into a JAR file and upload it to S3 for deployment.

#### Step 1: Build the JAR File

1. Navigate to the backend directory:

```bash
cd BE/workshop_BE
```

2. Clean and build the project:

**On Windows:**

```powershell
.\mvnw.cmd clean package -DskipTests
```

**On Linux/Mac:**

```bash
./mvnw clean package -DskipTests
```

3. Verify the JAR file was created:

```bash
# Windows
dir target\workshop-0.0.1-SNAPSHOT.jar

# Linux/Mac
ls -lh target/workshop-0.0.1-SNAPSHOT.jar
```

**Expected Result:** The file `workshop-0.0.1-SNAPSHOT.jar` should be in the `target` directory.

#### Step 2: Upload JAR to S3

1. Get the backend bucket name from CloudFormation outputs:

```bash
aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='BackendBucketName'].OutputValue" \
  --output text
```

2. Upload the JAR file to S3:

```bash
# Windows
aws s3 cp BE\workshop_BE\target\workshop-0.0.1-SNAPSHOT.jar s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/jars/ --region ap-southeast-1

# Linux/Mac
aws s3 cp BE/workshop_BE/target/workshop-0.0.1-SNAPSHOT.jar s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/jars/ --region ap-southeast-1
```

**Expected Result:** `upload: .../workshop-0.0.1-SNAPSHOT.jar to s3://...`

3. Verify the upload:

```bash
aws s3 ls s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/jars/ --region ap-southeast-1
```

#### Step 3: Get EC2 Instance ID

You'll need an EC2 instance ID to deploy the application. Get it from the Auto Scaling Group:

```bash
aws autoscaling describe-auto-scaling-groups \
  --region ap-southeast-1 \
  --query "AutoScalingGroups[?contains(AutoScalingGroupName, 'workshop-aws-dev')].Instances[0].InstanceId" \
  --output text
```

Or list all instances:

```bash
aws ec2 describe-instances \
  --region ap-southeast-1 \
  --filters "Name=tag:Name,Values=*workshop-aws-dev*" \
  --query "Reservations[*].Instances[*].[InstanceId,State.Name]" \
  --output table
```

**Note:** Save the instance ID for the next section.

![endpoint](img_1.png)
