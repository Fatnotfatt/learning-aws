---
title: "Triển Khai lên EC2"
date: 2025-09-09
weight: 2
chapter: false
pre: " <b> 5.3.2 </b> "
---

#### Kết Nối EC2 với Session Manager

Trong workshop này, bạn sẽ sử dụng **AWS Session Manager** để truy cập EC2 instances. Session Manager là một khả năng của AWS Systems Manager được quản lý hoàn toàn, cho phép bạn quản lý Amazon EC2 instances thông qua một shell dựa trên trình duyệt tương tác mà không cần mở inbound ports, duy trì bastion hosts, hoặc quản lý SSH keys.

1. Trong **AWS Management Console**, bắt đầu gõ `Systems Manager` trong hộp tìm kiếm nhanh và nhấn **Enter**:

![system manager](img.png)

2. Từ menu **Systems Manager**, tìm **Node Management** trong menu bên trái và click **Session Manager**:

![system manager](img.png)

3. Click **Start Session**, và chọn EC2 instance từ Auto Scaling Group của bạn (sử dụng instance ID bạn đã lưu từ phần trước).

![Start session](img_1.png)


**Session Manager** sẽ mở một tab trình duyệt mới với shell prompt: `sh-4.2 $`

![Success](img_2.png)

#### Triển Khai Ứng Dụng Backend

1. Chuyển sang ec2-user:

```bash
sudo su - ec2-user
```

2. Di chuyển vào thư mục ứng dụng:

```bash
cd /opt/workshop
```

3. Download file JAR từ S3:

```bash
aws s3 cp s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/jars/workshop-0.0.1-SNAPSHOT.jar . --region ap-southeast-1
```

4. Dừng ứng dụng hiện có (nếu đang chạy):

```bash
pkill -f workshop-0.0.1-SNAPSHOT.jar || true
```

5. Lấy RDS endpoint từ CloudFormation:

```bash
RDS_ENDPOINT=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='RDSEndpoint'].OutputValue" \
  --output text)

echo "RDS Endpoint: $RDS_ENDPOINT"
```

6. Tạo file application.properties:

```bash
cat > /opt/workshop/application.properties <<'EOF'
spring.application.name=workshop-aws

# AWS RDS Database Configuration
spring.datasource.url=jdbc:mysql://${RDS_ENDPOINT}:3306/workshop_aws?useSSL=true&requireSSL=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Ho_Chi_Minh
spring.datasource.username=admin
spring.datasource.password=phatsieuqua123
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

# Connection Pool
spring.datasource.hikari.maximum-pool-size=10
spring.datasource.hikari.minimum-idle=5
spring.datasource.hikari.connection-timeout=20000

# JPA Configuration
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=false

# Server Configuration
server.port=8080
server.servlet.context-path=/dna_service

# JWT Configuration
jwt.signerKey=2VJ50pdhYm96e4VECp/vsZGVmkSl9xp1rSYAZKsZL7n9Ti1pZYle3k9mheQEKt6+

# CORS Configuration
cors.allowed.origins=https://d3gmmg22uirq0t.cloudfront.net,https://98385v3jef.execute-api.ap-southeast-1.amazonaws.com

# Logging
logging.level.root=INFO
logging.level.aws_project.workshop=DEBUG
logging.file.name=/opt/workshop/application.log

# Actuator Configuration
management.endpoints.web.exposure.include=health,info,metrics
management.endpoint.health.show-details=when-authorized
EOF
```

**Lưu ý:** Thay thế `${RDS_ENDPOINT}` bằng giá trị RDS endpoint thực tế.

7. Khởi động ứng dụng:

```bash
nohup java -jar workshop-0.0.1-SNAPSHOT.jar \
  --spring.config.location=file:/opt/workshop/application.properties \
  >> /opt/workshop/application.log 2>&1 &
```

8. Đợi vài giây và kiểm tra ứng dụng có đang chạy:

```bash
sleep 10
ps aux | grep java
tail -20 /opt/workshop/application.log
```

#### Xác Minh Triển Khai Backend

1. Kiểm thử health endpoint:

```bash
curl http://localhost:8080/dna_service/actuator/health
```

**Kết Quả Mong Đợi:** `{"status":"UP"}`

2. Kiểm thử qua API Gateway (lấy URL từ CloudFormation outputs):

```bash
API_URL=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='APIGatewayURL'].OutputValue" \
  --output text)

curl ${API_URL}/dna_service/actuator/health
```

#### Tóm Tắt Phần

Chúc mừng! Bạn đã triển khai thành công ứng dụng Spring Boot backend lên EC2. Ứng dụng hiện đang chạy trong private subnet, có thể truy cập qua Application Load Balancer và API Gateway. Các VPC endpoints cho phép EC2 instance truy cập S3 (để download JAR) và Systems Manager (cho Session Manager) mà không cần đi qua public internet.
