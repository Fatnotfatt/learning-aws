---
title: "Event 4"
date: 2025-11-29
weight: 1
chapter: false
pre: " <b> 4.4. </b> "
---

# Summary Report: "AWS Well-Architected Security Pillar"

### Event Objectives

- Introduce AWS Well-Architected Framework Security Pillar
- Demonstrate 5 main Security pillars: IAM, Detection, Infrastructure Protection, Data Protection, and Incident Response
- Share best practices and core principles about cloud security
- Provide practical knowledge about threats and prevention in Vietnam
- Guide building security architecture according to AWS Well-Architected standards
- Connect with security experts and cloud practitioners

### Event Details

- **Date**: Saturday, November 29, 2025
- **Time**: 8:30 AM – 12:00 PM
- **Location**: AWS Vietnam Office, Bitexco Financial Tower, 2 Đ. Hải Triều, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh
- **Duration**: 3.5 hours (including coffee break)

### Agenda

#### 8:30 – 8:50 AM | Opening & Security Foundation (20 minutes)

- Role of Security Pillar in Well-Architected Framework
- Core Principles:
  - **Least Privilege**: Grant minimum necessary permissions
  - **Zero Trust**: Never trust, always verify
  - **Defense in Depth**: Multiple layers of protection
- Shared Responsibility Model: AWS and customer responsibilities
- Top threats in cloud environment in Vietnam
- Q&A

#### ⭐ Pillar 1 — Identity & Access Management

#### 8:50 – 9:30 AM | Modern IAM Architecture (40 minutes)

- **IAM Fundamentals**:

  - Users, Roles, Policies – avoid long-term credentials
  - Best practices for IAM setup
  - Temporary credentials and session management

- **IAM Identity Center**:

  - Single Sign-On (SSO) configuration
  - Permission sets and assignment
  - Multi-account management

- **Advanced IAM**:

  - Service Control Policies (SCP) for multi-account
  - Permission boundaries to limit permissions
  - MFA (Multi-Factor Authentication) requirements
  - Credential rotation strategies
  - Access Analyzer to detect external access

- **Mini Demo**: Validate IAM Policy + simulate access
  - Check policy syntax and permissions
  - Simulate access scenarios
  - Troubleshoot common IAM issues

#### ⭐ Pillar 2 — Detection

#### 9:30 – 9:55 AM | Detection & Continuous Monitoring (25 minutes)

- **AWS Security Services**:

  - **CloudTrail**: Organization-level logging and audit
  - **GuardDuty**: Threat detection and intelligent security
  - **Security Hub**: Centralized security findings

- **Comprehensive Logging**:

  - VPC Flow Logs: Network traffic monitoring
  - ALB Access Logs: Application layer monitoring
  - S3 Access Logs: Object access tracking
  - Logging at every layer of infrastructure

- **Alerting & Automation**:

  - EventBridge rules for security events
  - Automated response workflows
  - Integration with notification systems

- **Detection-as-Code**:
  - Infrastructure as Code for security rules
  - Version control for detection rules
  - Automated deployment and testing

#### 9:55 – 10:10 AM | Coffee Break (15 minutes)

- Break time
- Networking with participants
- Informal Q&A

#### ⭐ Pillar 3 — Infrastructure Protection

#### 10:10 – 10:40 AM | Network & Workload Security (30 minutes)

- **Network Security**:

  - **VPC Segmentation**: Separate network segments
  - Private vs Public placement strategies
  - Network isolation and security zones

- **Security Groups vs NACLs**:

  - When to use Security Groups
  - When to use NACLs
  - Practical application models
  - Best practices and common mistakes

- **Advanced Network Protection**:

  - **AWS WAF**: Web Application Firewall
  - **AWS Shield**: DDoS protection
  - **Network Firewall**: Managed network firewall service

- **Workload Protection**:
  - **EC2 Security**: Instance hardening, patch management
  - **ECS Security**: Container security best practices
  - **EKS Security**: Kubernetes security fundamentals
  - Security baselines and compliance

#### ⭐ Pillar 4 — Data Protection

#### 10:40 – 11:10 AM | Encryption, Keys & Secrets (30 minutes)

- **AWS KMS (Key Management Service)**:

  - Key policies and access control
  - Grants and delegation
  - Key rotation strategies
  - Multi-region key management

- **Encryption at Rest**:

  - **S3**: Server-side encryption (SSE-S3, SSE-KMS, SSE-C)
  - **EBS**: Volume encryption and snapshots
  - **RDS**: Database encryption
  - **DynamoDB**: Table encryption

- **Encryption in Transit**:

  - TLS/SSL best practices
  - Certificate management
  - End-to-end encryption

- **Secrets Management**:

  - **Secrets Manager**: Automated rotation patterns
  - **Parameter Store**: Secure parameter storage
  - Rotation patterns and best practices
  - Integration with applications

- **Data Classification & Access Guardrails**:
  - Data classification frameworks
  - Access controls based on classification
  - Compliance and regulatory requirements

#### ⭐ Pillar 5 — Incident Response

#### 11:10 – 11:40 AM | IR Playbook & Automation (30 minutes)

- **IR Lifecycle according to AWS**:

  - Prepare: Preparation and planning
  - Detect: Incident detection
  - Respond: Response and containment
  - Recover: Recovery and lessons learned

- **IR Playbooks for Common Scenarios**:

  **1. Compromised IAM Key**:

  - Detect compromised credentials
  - Immediate response steps
  - Key rotation and access revocation
  - Investigation and forensics

  **2. S3 Public Exposure**:

  - Detect public buckets
  - Immediate remediation
  - Access review and audit
  - Prevention strategies

  **3. EC2 Malware Detection**:

  - Detect malware and suspicious activity
  - Isolation procedures
  - Evidence collection
  - Cleanup and recovery

- **Automated Response**:

  - Lambda functions for automated response
  - Step Functions for complex workflows
  - Integration with security services
  - Playbook automation patterns

- **Evidence Collection**:
  - Snapshot creation for forensics
  - Log preservation
  - Chain of custody
  - Compliance with legal requirements

#### 11:40 AM – 12:00 PM | Wrap-Up & Q&A (20 minutes)

- Summary of 5 Security pillars
- Common pitfalls and frequent mistakes
- Vietnamese enterprise reality:
  - Security challenges in Vietnam
  - Compliance requirements
  - Best practices for local context
- Security learning roadmap:
  - AWS Certified Security – Specialty
  - AWS Certified Solutions Architect – Professional
  - Security training paths
- Q&A session
- Commemorative photos

### Key Highlights

#### Security Foundation Principles

**Least Privilege:**

- Grant only minimum necessary permissions to perform work
- Regular review and audit permissions
- Use temporary credentials instead of long-term keys
- Principle of least privilege at every layer

**Zero Trust:**

- Never trust by default, always verify
- Verify identity and authorization for every request
- Network segmentation and micro-segmentation
- Continuous verification and monitoring

**Defense in Depth:**

- Multiple layers of protection: Network, Application, Data, Identity
- Don't rely on a single layer of protection
- Layered security controls
- Fail-safe defaults

**Shared Responsibility Model:**

- AWS: Security OF the cloud (infrastructure)
- Customer: Security IN the cloud (data, applications, configurations)
- Understand responsibilities of each party
- Best practices for customer responsibilities

#### Pillar 1: Identity & Access Management

**Modern IAM Architecture:**

- Use IAM Roles instead of Users when possible
- Temporary credentials with STS
- IAM Identity Center for SSO
- Permission boundaries and SCPs

**Best Practices:**

- Enable MFA for all users
- Regular credential rotation
- Use Access Analyzer to detect external access
- Least privilege policies
- Regular access reviews

#### Pillar 2: Detection

**Comprehensive Monitoring:**

- CloudTrail for audit trail
- GuardDuty for threat detection
- Security Hub for centralized view
- VPC Flow Logs for network monitoring

**Detection-as-Code:**

- Version control for detection rules
- Automated testing
- CI/CD for security rules
- Infrastructure as Code approach

#### Pillar 3: Infrastructure Protection

**Network Security:**

- VPC segmentation
- Security Groups and NACLs
- WAF, Shield, Network Firewall
- Private subnets and NAT gateways

**Workload Security:**

- EC2 hardening
- Container security
- Kubernetes security
- Patch management

#### Pillar 4: Data Protection

**Encryption:**

- Encryption at rest with KMS
- Encryption in transit with TLS
- Key management best practices
- Secrets management

**Data Classification:**

- Classify data by sensitivity
- Apply appropriate controls
- Access guardrails
- Compliance requirements

#### Pillar 5: Incident Response

**IR Lifecycle:**

- Prepare: Planning and tools
- Detect: Monitoring and alerting
- Respond: Containment and investigation
- Recover: Restoration and lessons learned

**Automation:**

- Automated response with Lambda
- Step Functions for workflows
- Integration with security services
- Playbook automation

### Key Takeaways

#### Security Foundation

- **Well-Architected Framework**: Understanding Security Pillar and its role
- **Core Principles**: Least Privilege, Zero Trust, Defense in Depth
- **Shared Responsibility**: AWS and customer responsibilities
- **Threat Landscape**: Top threats in Vietnam and prevention methods

#### IAM Best Practices

- **Modern IAM**: Use roles, temporary credentials
- **IAM Identity Center**: SSO and permission management
- **Advanced Features**: SCPs, permission boundaries, Access Analyzer
- **Security**: MFA, credential rotation, least privilege

#### Detection & Monitoring

- **Security Services**: CloudTrail, GuardDuty, Security Hub
- **Comprehensive Logging**: VPC Flow Logs, ALB logs, S3 logs
- **Alerting**: EventBridge and automation
- **Detection-as-Code**: Infrastructure as Code for security

#### Infrastructure Protection

- **Network Security**: VPC segmentation, Security Groups, NACLs
- **Advanced Protection**: WAF, Shield, Network Firewall
- **Workload Security**: EC2, ECS, EKS security
- **Best Practices**: Hardening and patch management

#### Data Protection

- **Encryption**: At rest and in transit
- **KMS**: Key management and rotation
- **Secrets Management**: Secrets Manager and Parameter Store
- **Data Classification**: Access guardrails and compliance

#### Incident Response

- **IR Lifecycle**: Prepare, Detect, Respond, Recover
- **Playbooks**: Common scenarios and response procedures
- **Automation**: Lambda and Step Functions
- **Forensics**: Evidence collection and preservation

### Applying to Work

- **Design Security Architecture**: Apply 5 pillars to architecture design
- **Implement IAM Best Practices**: Use modern IAM patterns
- **Setup Detection**: Deploy comprehensive monitoring
- **Protect Infrastructure**: Apply network and workload security
- **Protect Data**: Implement encryption and secrets management
- **Prepare IR**: Build incident response playbooks and automation
- **Security Reviews**: Regular security assessments and improvements

### Event Experience

Attending the **"AWS Well-Architected Security Pillar"** workshop was an intensive learning experience about cloud security. The event provided comprehensive knowledge about the 5 Security pillars and practical best practices, helping me understand how to build secure cloud architecture.

#### Security Foundation

- **Opening session** introduced Security Pillar in Well-Architected Framework.
- I learned about core principles: Least Privilege, Zero Trust, Defense in Depth.
- **Shared Responsibility Model** helped me understand AWS and customer responsibilities.
- **Top threats in Vietnam** provided real-world context for security challenges.

#### Modern IAM Architecture

- **IAM session** went deep into modern IAM patterns and best practices.
- Learning about IAM Identity Center for SSO and multi-account management.
- **Advanced features** like SCPs and permission boundaries were very useful.
- **Demo validate IAM policy** showed practical approach to test policies.

#### Detection & Continuous Monitoring

- **Detection session** covered comprehensive monitoring strategy.
- CloudTrail, GuardDuty, and Security Hub form a powerful security monitoring stack.
- **Logging at every layer** helped me understand defense in depth.
- **Detection-as-Code** approach was very innovative and practical.

#### Network & Workload Security

- **Infrastructure Protection session** went deep into network security.
- Clear understanding of when to use Security Groups vs NACLs.
- **Advanced protection** with WAF, Shield, Network Firewall.
- **Workload security** for EC2, ECS, EKS provided practical guidance.

#### Data Protection

- **Data Protection session** covered encryption and secrets management.
- KMS key management and rotation strategies are very important.
- **Encryption at rest and in transit** for all services.
- **Secrets Manager patterns** for automated rotation.

#### Incident Response

- **IR session** provided practical playbooks for common scenarios.
- Learning about IR lifecycle and best practices.
- **Automated response** with Lambda and Step Functions is very powerful.
- **Evidence collection** procedures for forensics and compliance.

#### Wrap-up and Q&A

- **Wrap-up session** summarized 5 pillars comprehensively.
- **Common pitfalls** helped me avoid frequent mistakes.
- **Vietnamese enterprise reality** provided local context.
- **Learning roadmap** for security certifications was very useful.

#### Lessons Learned

- **Security is foundation**: Must design security from the start, not add-on later.
- **Defense in Depth**: Don't rely on a single layer of protection.
- **Automation is key**: Automated detection and response reduce response time.
- **Continuous improvement**: Security is an ongoing process, not a one-time setup.
- **Compliance matters**: Understand regulatory requirements and best practices.
- **Practice makes perfect**: Need regular practice and review.

#### Some event photos

![Event Photo 1](image/z7289500932294_37cb341812f009afabdde06a29e773dd.jpg)

![Event Photo 2](image/z7289500932177_9a8d8652a597266bd16aa07f1316a1ec.jpg)

![Event Photo 3](image/z7289500871395_de55e0277191d4cca9154d62773d14b8.jpg)

![Event Photo 4](image/z7289500871394_a140be28661616689bab7727e6dc7dba.jpg)

![Event Photo 5](image/z7289500871330_54054826c8906b94ce2619e34439b2ad.jpg)

> Overall, this workshop provided me with comprehensive knowledge about AWS Well-Architected Security Pillar. The combination of theory, best practices, and practical demos gave me a solid foundation to build secure cloud architecture. Particularly, the incident response and automation sections provided practical skills that can be applied immediately to work. This workshop is essential for anyone wanting to understand cloud security on AWS in depth.
