---
title: "Testing and Monitoring"
date: 2025-09-09
weight: 5
chapter: false
pre: " <b> 5.5. </b> "
---

#### Application Testing and Monitoring

In this section, you will learn how to test the application and monitor its performance using AWS CloudWatch and other monitoring tools.

#### Testing the Application

1. **Health Check Endpoints:**
   - Backend: `https://98385v3jef.execute-api.ap-southeast-1.amazonaws.com/dev/dna_service/actuator/health`
   - Frontend: `https://d3gmmg22uirq0t.cloudfront.net`

2. **API Testing:**
   - Use Swagger UI: `https://98385v3jef.execute-api.ap-southeast-1.amazonaws.com/dev/dna_service/swagger-ui.html`
   - Test endpoints using curl or Postman

3. **End-to-End Testing:**
   - Register a new user
   - Login and verify JWT token
   - Create and manage resources
   - Verify data persistence in database

#### CloudWatch Monitoring

1. **View Application Logs:**

```bash
aws logs tail /aws/workshop-aws/dev/application --follow --region ap-southeast-1
```

2. **Check EC2 Metrics:**
   - CPU Utilization
   - Network In/Out
   - Status Check Failed

3. **Monitor RDS:**
   - Database connections
   - CPU utilization
   - Storage space

4. **API Gateway Metrics:**
   - Request count
   - Latency
   - Error rates

#### Auto Scaling

The Auto Scaling Group will automatically:
- Scale up when CPU > 70% for 5 minutes
- Scale down when CPU < 30% for 5 minutes
- Maintain between 1-2 instances (configurable)

Monitor scaling activities:

```bash
aws autoscaling describe-scaling-activities \
  --auto-scaling-group-name <ASG_NAME> \
  --region ap-southeast-1
```

#### Performance Optimization

1. **CloudFront Cache:**
   - Static assets are cached at edge locations
   - Invalidate cache when deploying updates

2. **Database Optimization:**
   - Monitor slow queries
   - Optimize indexes
   - Consider read replicas for high traffic

3. **Application Optimization:**
   - Monitor JVM heap usage
   - Optimize database queries
   - Use connection pooling effectively

