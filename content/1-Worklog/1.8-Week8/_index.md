---
title: "Worklog Week 8"
date: 2025-10-26
weight: 1
chapter: false
pre: " <b> 1.8. </b> "
---

### Week 8 Objectives:

- Complete the **Edge Layer** and **Frontend Storage**: Route 53, S3, CloudFront, AWS WAF, and ACM Certificate.
- Set up DNS management with Route 53 hosted zone and domain configuration.
- Configure S3 bucket for static frontend hosting with proper access policies.
- Deploy CloudFront distribution for global content delivery with Origin Access Control.
- Implement AWS WAF protection with security rules (SQL injection, XSS, bot control).
- Set up ACM Certificate and enable HTTPS for secure content delivery.

---

### Tasks for the Week:

| Day | Task | Start Date | Completion Date | Reference |
|-----|------|------------|-----------------|-----------|
| 1 | - **System Requirements Analysis & Architecture Design:** <br> + Analyze system requirements and review the complete architecture diagram. <br> + Identify all components: Route 53, S3, CloudFront, WAF, ACM, VPC, EC2, RDS, API Gateway. <br> + Create High-Level Design (HLD) document with architecture overview. <br> + Document data flow: Users → Route 53 → CloudFront → WAF → S3 (Frontend). <br> + Plan IP addressing scheme and resource naming conventions. | 26/10/2025 | 26/10/2025 | Architecture diagram |
| 2 | - **Route 53 Setup:** <br> + Create Route 53 hosted zone for domain management. <br> + Create A record pointing to CloudFront distribution (planned for Day 4). <br> + Create CNAME records for subdomains if needed. <br> + Configure DNS settings and verify domain ownership. <br> + Document DNS configuration and record types. | 27/10/2025 | 27/10/2025 | Route 53 documentation |
| 3 | - **S3 Frontend Bucket Configuration:** <br> + Create S3 bucket for frontend static assets (FE Bucket) with appropriate naming. <br> + Enable static website hosting on S3 bucket. <br> + Configure public access policy for CloudFront access (block public access, allow CloudFront via OAC). <br> + Upload test frontend files (HTML, CSS, JS, images) to S3 bucket. <br> + Test static website hosting endpoint and verify file accessibility. | 28/10/2025 | 28/10/2025 | S3 documentation |
| 4 | - **CloudFront Distribution Setup:** <br> + Create CloudFront distribution with S3 bucket as origin. <br> + Configure Origin Access Control (OAC) for secure S3 access (replacing OAI). <br> + Set up cache policies (CachingOptimized, CachingDisabled, etc.). <br> + Configure default root object (index.html). <br> + Map Route 53 domain to CloudFront distribution (update A record from Day 2). <br> + Test CloudFront distribution and verify content delivery. | 29/10/2025 | 29/10/2025 | CloudFront documentation |
| 5 | - **AWS WAF Integration:** <br> + Create AWS WAF WebACL for CloudFront protection. <br> + Add managed rules: AWS Managed Rules for SQL injection protection. <br> + Add managed rules: AWS Managed Rules for XSS (Cross-Site Scripting) protection. <br> + Configure bot control rules to block common bots and scrapers. <br> + Associate WAF WebACL with CloudFront distribution. <br> + Test WAF rules by attempting common attack patterns and verify blocking. | 30/10/2025 | 30/10/2025 | AWS WAF documentation |
| 6 | - **ACM Certificate & HTTPS Configuration:** <br> + Request ACM Certificate in us-east-1 region (required for CloudFront). <br> + Validate certificate using DNS validation method (add CNAME records to Route 53). <br> + Wait for certificate validation and issuance. <br> + Bind ACM certificate to CloudFront distribution. <br> + Configure CloudFront to use HTTPS only (redirect HTTP to HTTPS). <br> + Test HTTPS connection and verify SSL/TLS certificate is working correctly. <br> - **Week 8 Summary:** Edge layer and frontend storage complete, ready for VPC and networking setup in Week 9. | 31/10/2025 | 31/10/2025 | ACM documentation |

---

### Achievements in Week 8:

- Successfully completed **system analysis and architecture design**:

  - Analyzed system requirements and reviewed complete architecture diagram.
  - Created High-Level Design (HLD) document with architecture overview and component relationships.
  - Documented data flow from users through edge services to frontend storage.
  - Established resource naming conventions and planning documentation.

- Set up **Route 53 DNS management**:

  - Created Route 53 hosted zone for domain management.
  - Configured A and CNAME records for domain routing.
  - Established DNS foundation for connecting domain to CloudFront distribution.

- Configured **S3 for static frontend hosting**:

  - Created S3 bucket for frontend static assets with proper naming conventions.
  - Enabled static website hosting on S3 bucket.
  - Configured public access policies: blocked public access, allowed CloudFront access via Origin Access Control.
  - Uploaded test frontend files and verified static website hosting functionality.

- Deployed **CloudFront distribution**:

  - Created CloudFront distribution with S3 bucket as origin.
  - Configured Origin Access Control (OAC) for secure S3 access (modern replacement for OAI).
  - Set up cache policies for optimized content delivery.
  - Mapped Route 53 domain to CloudFront distribution.
  - Verified content delivery through CloudFront CDN globally.

- Implemented **AWS WAF protection**:

  - Created AWS WAF WebACL with comprehensive security rules.
  - Added AWS Managed Rules for SQL injection protection.
  - Added AWS Managed Rules for XSS (Cross-Site Scripting) protection.
  - Configured bot control rules to block malicious bots and scrapers.
  - Associated WAF WebACL with CloudFront distribution.
  - Tested WAF rules and verified protection against common attack patterns.

- Enabled **HTTPS with ACM Certificate**:

  - Requested and validated ACM Certificate in us-east-1 region (required for CloudFront).
  - Used DNS validation method with CNAME records in Route 53.
  - Bound ACM certificate to CloudFront distribution.
  - Configured CloudFront to enforce HTTPS (redirect HTTP to HTTPS).
  - Verified SSL/TLS certificate is working correctly and secure connections are established.

- After Week 8, the edge layer and frontend storage are complete with secure, global content delivery. The system is ready for VPC and networking core setup in Week 9.
