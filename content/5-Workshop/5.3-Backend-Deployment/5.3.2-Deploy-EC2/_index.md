---
title: "Deploy to EC2"
date: 2025-09-09
weight: 2
chapter: false
pre: " <b> 5.3.2 </b> "
---

#### Connect to EC2 with Session Manager

For this workshop, you will use **AWS Session Manager** to access EC2 instances. Session Manager is a fully managed AWS Systems Manager capability that allows you to manage your Amazon EC2 instances through an interactive browser-based shell without the need to open inbound ports, maintain bastion hosts, or manage SSH keys.

1. In the **AWS Management Console**, start typing `Systems Manager` in the quick search box and press **Enter**:

![system manager](/images/5-Workshop/5.3-S3-vpc/sm.png)

2. From the **Systems Manager** menu, find **Node Management** in the left menu and click **Session Manager**:

![system manager](/images/5-Workshop/5.3-S3-vpc/sm1.png)

3. Click **Start Session**, and select the EC2 instance from your Auto Scaling Group (use the instance ID you saved from the previous section).

![Start session](/images/5-Workshop/5.3-S3-vpc/start-session.png)

**Session Manager** will open a new browser tab with a shell prompt: `sh-4.2 $`

![Success](/images/5-Workshop/5.3-S3-vpc/start-session-success.png)

#### Deploy Backend Application

1. Switch to the ec2-user:

```bash
sudo su - ec2-user
```

2. Navigate to the application directory:

```bash
cd /opt/workshop
```

3. Download the JAR file from S3:

```bash
aws s3 cp s3://workshop-aws-dev-backend-502310717700-ap-southeast-1/jars/workshop-0.0.1-SNAPSHOT.jar . --region ap-southeast-1
```

4. Stop any existing application (if running):

```bash
pkill -f workshop-0.0.1-SNAPSHOT.jar || true
```

5. Get the RDS endpoint from CloudFormation:

```bash
RDS_ENDPOINT=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='RDSEndpoint'].OutputValue" \
  --output text)

echo "RDS Endpoint: $RDS_ENDPOINT"
```

6. Create the application.properties file:

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

**Note:** Replace `${RDS_ENDPOINT}` with the actual RDS endpoint value.

7. Start the application:

```bash
nohup java -jar workshop-0.0.1-SNAPSHOT.jar \
  --spring.config.location=file:/opt/workshop/application.properties \
  >> /opt/workshop/application.log 2>&1 &
```

8. Wait a few seconds and check if the application is running:

```bash
sleep 10
ps aux | grep java
tail -20 /opt/workshop/application.log
```

#### Verify Backend Deployment

1. Test the health endpoint:

```bash
curl http://localhost:8080/dna_service/actuator/health
```

**Expected Result:** `{"status":"UP"}`

2. Test through the API Gateway (get the URL from CloudFormation outputs):

```bash
API_URL=$(aws cloudformation describe-stacks \
  --stack-name workshop-aws-dev \
  --region ap-southeast-1 \
  --query "Stacks[0].Outputs[?OutputKey=='APIGatewayURL'].OutputValue" \
  --output text)

curl ${API_URL}/dna_service/actuator/health
```

#### Section Summary

Congratulations! You have successfully deployed the Spring Boot backend application to EC2. The application is now running in a private subnet, accessible through the Application Load Balancer and API Gateway. The VPC endpoints allow the EC2 instance to access S3 (for downloading the JAR) and Systems Manager (for Session Manager) without traversing the public internet.
