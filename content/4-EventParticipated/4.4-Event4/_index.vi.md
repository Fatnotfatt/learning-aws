---
title: "Event 4"
date: 2025-11-29
weight: 1
chapter: false
pre: " <b> 4.4. </b> "
---

# Bài thu hoạch "AWS Well-Architected Security Pillar"

### Mục Đích Của Sự Kiện

- Giới thiệu AWS Well-Architected Framework Security Pillar
- Trình diễn 5 pillars chính của Security: IAM, Detection, Infrastructure Protection, Data Protection, và Incident Response
- Chia sẻ best practices và nguyên tắc cốt lõi về cloud security
- Cung cấp kiến thức thực tế về các threats và cách phòng chống tại Việt Nam
- Hướng dẫn xây dựng security architecture theo chuẩn AWS Well-Architected
- Kết nối với các chuyên gia security và cloud practitioners

### Chi Tiết Sự Kiện

- **Ngày**: Thứ Bảy, 29 tháng 11 năm 2025
- **Thời gian**: 08:30 – 12:00
- **Địa điểm**: AWS Vietnam Office, Bitexco Financial Tower, 2 Đ. Hải Triều, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh
- **Thời lượng**: 3.5 giờ (bao gồm coffee break)

### Chương Trình

#### 8:30 – 8:50 | Khai mạc & Security Foundation (20 phút)

- Vai trò Security Pillar trong Well-Architected Framework
- Nguyên tắc cốt lõi:
  - **Least Privilege**: Cấp quyền tối thiểu cần thiết
  - **Zero Trust**: Không tin tưởng mặc định, luôn xác minh
  - **Defense in Depth**: Bảo vệ nhiều lớp
- Shared Responsibility Model: Trách nhiệm của AWS và khách hàng
- Top threats trong môi trường cloud tại Việt Nam
- Q&A

#### ⭐ Pillar 1 — Identity & Access Management

#### 8:50 – 9:30 | Modern IAM Architecture (40 phút)

- **IAM Fundamentals**:

  - Users, Roles, Policies – tránh long-term credentials
  - Best practices cho IAM setup
  - Temporary credentials và session management

- **IAM Identity Center**:

  - Single Sign-On (SSO) configuration
  - Permission sets và assignment
  - Multi-account management

- **Advanced IAM**:

  - Service Control Policies (SCP) cho multi-account
  - Permission boundaries để giới hạn quyền
  - MFA (Multi-Factor Authentication) requirements
  - Credential rotation strategies
  - Access Analyzer để phát hiện external access

- **Mini Demo**: Validate IAM Policy + simulate access
  - Kiểm tra policy syntax và permissions
  - Mô phỏng access scenarios
  - Troubleshooting common IAM issues

#### ⭐ Pillar 2 — Detection

#### 9:30 – 9:55 | Detection & Continuous Monitoring (25 phút)

- **AWS Security Services**:

  - **CloudTrail**: Organization-level logging và audit
  - **GuardDuty**: Threat detection và intelligent security
  - **Security Hub**: Centralized security findings

- **Comprehensive Logging**:

  - VPC Flow Logs: Network traffic monitoring
  - ALB Access Logs: Application layer monitoring
  - S3 Access Logs: Object access tracking
  - Logging tại mọi tầng của infrastructure

- **Alerting & Automation**:

  - EventBridge rules cho security events
  - Automated response workflows
  - Integration với notification systems

- **Detection-as-Code**:
  - Infrastructure as Code cho security rules
  - Version control cho detection rules
  - Automated deployment và testing

#### 9:55 – 10:10 | Coffee Break (15 phút)

- Nghỉ giải lao
- Networking với các participants
- Q&A không chính thức

#### ⭐ Pillar 3 — Infrastructure Protection

#### 10:10 – 10:40 | Network & Workload Security (30 phút)

- **Network Security**:

  - **VPC Segmentation**: Tách biệt network segments
  - Private vs Public placement strategies
  - Network isolation và security zones

- **Security Groups vs NACLs**:

  - Khi nào sử dụng Security Groups
  - Khi nào sử dụng NACLs
  - Mô hình áp dụng thực tế
  - Best practices và common mistakes

- **Advanced Network Protection**:

  - **AWS WAF**: Web Application Firewall
  - **AWS Shield**: DDoS protection
  - **Network Firewall**: Managed network firewall service

- **Workload Protection**:
  - **EC2 Security**: Instance hardening, patch management
  - **ECS Security**: Container security best practices
  - **EKS Security**: Kubernetes security fundamentals
  - Security baselines và compliance

#### ⭐ Pillar 4 — Data Protection

#### 10:40 – 11:10 | Encryption, Keys & Secrets (30 phút)

- **AWS KMS (Key Management Service)**:

  - Key policies và access control
  - Grants và delegation
  - Key rotation strategies
  - Multi-region key management

- **Encryption at Rest**:

  - **S3**: Server-side encryption (SSE-S3, SSE-KMS, SSE-C)
  - **EBS**: Volume encryption và snapshots
  - **RDS**: Database encryption
  - **DynamoDB**: Table encryption

- **Encryption in Transit**:

  - TLS/SSL best practices
  - Certificate management
  - End-to-end encryption

- **Secrets Management**:

  - **Secrets Manager**: Automated rotation patterns
  - **Parameter Store**: Secure parameter storage
  - Rotation patterns và best practices
  - Integration với applications

- **Data Classification & Access Guardrails**:
  - Data classification frameworks
  - Access controls based on classification
  - Compliance và regulatory requirements

#### ⭐ Pillar 5 — Incident Response

#### 11:10 – 11:40 | IR Playbook & Automation (30 phút)

- **IR Lifecycle theo AWS**:

  - Prepare: Chuẩn bị và planning
  - Detect: Phát hiện incidents
  - Respond: Phản ứng và containment
  - Recover: Khôi phục và lessons learned

- **IR Playbooks cho Common Scenarios**:

  **1. Compromised IAM Key**:

  - Phát hiện compromised credentials
  - Immediate response steps
  - Key rotation và access revocation
  - Investigation và forensics

  **2. S3 Public Exposure**:

  - Phát hiện public buckets
  - Immediate remediation
  - Access review và audit
  - Prevention strategies

  **3. EC2 Malware Detection**:

  - Phát hiện malware và suspicious activity
  - Isolation procedures
  - Evidence collection
  - Cleanup và recovery

- **Automated Response**:

  - Lambda functions cho automated response
  - Step Functions cho complex workflows
  - Integration với security services
  - Playbook automation patterns

- **Evidence Collection**:
  - Snapshot creation cho forensics
  - Log preservation
  - Chain of custody
  - Compliance với legal requirements

#### 11:40 – 12:00 | Wrap-Up & Q&A (20 phút)

- Tổng kết 5 pillars của Security
- Common pitfalls và mistakes thường gặp
- Thực tế doanh nghiệp Việt Nam:
  - Security challenges tại Việt Nam
  - Compliance requirements
  - Best practices cho local context
- Roadmap security learning:
  - AWS Certified Security – Specialty
  - AWS Certified Solutions Architect – Professional
  - Security training paths
- Q&A session
- Chụp ảnh lưu niệm

### Nội Dung Nổi Bật

#### Security Foundation Principles

**Least Privilege:**

- Chỉ cấp quyền tối thiểu cần thiết để thực hiện công việc
- Regular review và audit permissions
- Sử dụng temporary credentials thay vì long-term keys
- Principle of least privilege trong mọi layer

**Zero Trust:**

- Không tin tưởng mặc định, luôn xác minh
- Verify identity và authorization cho mọi request
- Network segmentation và micro-segmentation
- Continuous verification và monitoring

**Defense in Depth:**

- Bảo vệ nhiều lớp: Network, Application, Data, Identity
- Không phụ thuộc vào một lớp bảo vệ duy nhất
- Layered security controls
- Fail-safe defaults

**Shared Responsibility Model:**

- AWS: Security OF the cloud (infrastructure)
- Customer: Security IN the cloud (data, applications, configurations)
- Hiểu rõ trách nhiệm của mỗi bên
- Best practices cho customer responsibilities

#### Pillar 1: Identity & Access Management

**Modern IAM Architecture:**

- Sử dụng IAM Roles thay vì Users khi có thể
- Temporary credentials với STS
- IAM Identity Center cho SSO
- Permission boundaries và SCPs

**Best Practices:**

- Enable MFA cho tất cả users
- Regular credential rotation
- Use Access Analyzer để phát hiện external access
- Least privilege policies
- Regular access reviews

#### Pillar 2: Detection

**Comprehensive Monitoring:**

- CloudTrail cho audit trail
- GuardDuty cho threat detection
- Security Hub cho centralized view
- VPC Flow Logs cho network monitoring

**Detection-as-Code:**

- Version control cho detection rules
- Automated testing
- CI/CD cho security rules
- Infrastructure as Code approach

#### Pillar 3: Infrastructure Protection

**Network Security:**

- VPC segmentation
- Security Groups và NACLs
- WAF, Shield, Network Firewall
- Private subnets và NAT gateways

**Workload Security:**

- EC2 hardening
- Container security
- Kubernetes security
- Patch management

#### Pillar 4: Data Protection

**Encryption:**

- Encryption at rest với KMS
- Encryption in transit với TLS
- Key management best practices
- Secrets management

**Data Classification:**

- Classify data by sensitivity
- Apply appropriate controls
- Access guardrails
- Compliance requirements

#### Pillar 5: Incident Response

**IR Lifecycle:**

- Prepare: Planning và tools
- Detect: Monitoring và alerting
- Respond: Containment và investigation
- Recover: Restoration và lessons learned

**Automation:**

- Automated response với Lambda
- Step Functions cho workflows
- Integration với security services
- Playbook automation

### Những Gì Học Được

#### Security Foundation

- **Well-Architected Framework**: Hiểu về Security Pillar và vai trò
- **Core Principles**: Least Privilege, Zero Trust, Defense in Depth
- **Shared Responsibility**: Trách nhiệm của AWS và customer
- **Threat Landscape**: Top threats tại Việt Nam và cách phòng chống

#### IAM Best Practices

- **Modern IAM**: Sử dụng roles, temporary credentials
- **IAM Identity Center**: SSO và permission management
- **Advanced Features**: SCPs, permission boundaries, Access Analyzer
- **Security**: MFA, credential rotation, least privilege

#### Detection & Monitoring

- **Security Services**: CloudTrail, GuardDuty, Security Hub
- **Comprehensive Logging**: VPC Flow Logs, ALB logs, S3 logs
- **Alerting**: EventBridge và automation
- **Detection-as-Code**: Infrastructure as Code cho security

#### Infrastructure Protection

- **Network Security**: VPC segmentation, Security Groups, NACLs
- **Advanced Protection**: WAF, Shield, Network Firewall
- **Workload Security**: EC2, ECS, EKS security
- **Best Practices**: Hardening và patch management

#### Data Protection

- **Encryption**: At rest và in transit
- **KMS**: Key management và rotation
- **Secrets Management**: Secrets Manager và Parameter Store
- **Data Classification**: Access guardrails và compliance

#### Incident Response

- **IR Lifecycle**: Prepare, Detect, Respond, Recover
- **Playbooks**: Common scenarios và response procedures
- **Automation**: Lambda và Step Functions
- **Forensics**: Evidence collection và preservation

### Ứng Dụng Vào Công Việc

- **Thiết kế Security Architecture**: Áp dụng 5 pillars vào architecture design
- **Implement IAM Best Practices**: Sử dụng modern IAM patterns
- **Setup Detection**: Triển khai comprehensive monitoring
- **Protect Infrastructure**: Áp dụng network và workload security
- **Protect Data**: Implement encryption và secrets management
- **Prepare IR**: Xây dựng incident response playbooks và automation
- **Security Reviews**: Regular security assessments và improvements

### Trải nghiệm trong event

Tham gia workshop **"AWS Well-Architected Security Pillar"** là một trải nghiệm học tập chuyên sâu về cloud security. Sự kiện cung cấp kiến thức toàn diện về 5 pillars của Security và best practices thực tế, giúp em hiểu rõ cách xây dựng secure cloud architecture.

#### Security Foundation

- **Opening session** giới thiệu về Security Pillar trong Well-Architected Framework.
- Em học về các nguyên tắc cốt lõi: Least Privilege, Zero Trust, Defense in Depth.
- **Shared Responsibility Model** giúp em hiểu rõ trách nhiệm của AWS và customer.
- **Top threats tại Việt Nam** cung cấp context thực tế cho security challenges.

#### Modern IAM Architecture

- **IAM session** đi sâu vào modern IAM patterns và best practices.
- Học về IAM Identity Center cho SSO và multi-account management.
- **Advanced features** như SCPs và permission boundaries rất hữu ích.
- **Demo validate IAM policy** cho thấy practical approach để test policies.

#### Detection & Continuous Monitoring

- **Detection session** bao phủ comprehensive monitoring strategy.
- CloudTrail, GuardDuty, và Security Hub tạo thành security monitoring stack mạnh mẽ.
- **Logging tại mọi tầng** giúp em hiểu về defense in depth.
- **Detection-as-Code** approach rất innovative và practical.

#### Network & Workload Security

- **Infrastructure Protection session** đi sâu vào network security.
- Hiểu rõ khi nào sử dụng Security Groups vs NACLs.
- **Advanced protection** với WAF, Shield, Network Firewall.
- **Workload security** cho EC2, ECS, EKS cung cấp practical guidance.

#### Data Protection

- **Data Protection session** bao phủ encryption và secrets management.
- KMS key management và rotation strategies rất quan trọng.
- **Encryption at rest và in transit** cho tất cả services.
- **Secrets Manager patterns** cho automated rotation.

#### Incident Response

- **IR session** cung cấp practical playbooks cho common scenarios.
- Học về IR lifecycle và best practices.
- **Automated response** với Lambda và Step Functions rất powerful.
- **Evidence collection** procedures cho forensics và compliance.

#### Wrap-up và Q&A

- **Wrap-up session** tổng kết 5 pillars một cách comprehensive.
- **Common pitfalls** giúp em tránh những mistakes thường gặp.
- **Thực tế doanh nghiệp Việt Nam** cung cấp local context.
- **Roadmap learning** cho security certifications rất hữu ích.

#### Bài học rút ra

- **Security là foundation**: Phải thiết kế security từ đầu, không phải add-on sau.
- **Defense in Depth**: Không phụ thuộc vào một lớp bảo vệ duy nhất.
- **Automation is key**: Automated detection và response giảm response time.
- **Continuous improvement**: Security là ongoing process, không phải one-time setup.
- **Compliance matters**: Hiểu về regulatory requirements và best practices.
- **Practice makes perfect**: Cần thực hành và review thường xuyên.

#### Một số hình ảnh khi tham gia sự kiện

![Hình ảnh sự kiện 1](image/z7289500932294_37cb341812f009afabdde06a29e773dd.jpg)

![Hình ảnh sự kiện 2](image/z7289500932177_9a8d8652a597266bd16aa07f1316a1ec.jpg)

![Hình ảnh sự kiện 3](image/z7289500871395_de55e0277191d4cca9154d62773d14b8.jpg)

![Hình ảnh sự kiện 4](image/z7289500871394_a140be28661616689bab7727e6dc7dba.jpg)

![Hình ảnh sự kiện 5](image/z7289500871330_54054826c8906b94ce2619e34439b2ad.jpg)

> Tổng thể, workshop này cung cấp cho em kiến thức toàn diện về AWS Well-Architected Security Pillar. Sự kết hợp giữa lý thuyết, best practices, và practical demos cho em foundation vững chắc để xây dựng secure cloud architecture. Đặc biệt, phần về incident response và automation cung cấp practical skills có thể áp dụng ngay vào công việc. Workshop này là essential cho bất kỳ ai muốn hiểu sâu về cloud security trên AWS.
