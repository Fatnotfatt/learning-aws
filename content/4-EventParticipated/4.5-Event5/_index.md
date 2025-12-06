---
title: "Event 3"
date: 2025-09-10
weight: 1
chapter: false
pre: " <b> 4.4. </b> "
---

# Summary Report: "DevOps on AWS"

### Event Objectives

- Introduce DevOps culture, principles, and key metrics
- Demonstrate AWS DevOps services for CI/CD pipeline automation
- Explore Infrastructure as Code (IaC) with CloudFormation and CDK
- Cover container services and microservices deployment strategies
- Provide monitoring and observability best practices
- Share real-world DevOps case studies and best practices

### Event Details

- **Date**: Monday, November 17, 2025
- **Time**: 8:30 AM – 5:00 PM
- **Location**: Bitexco Financial Tower, 2 Đ. Hải Triều, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh
- **Duration**: Full day (8.5 hours with breaks)

### Agenda

#### Morning Session (8:30 AM – 12:00 PM)

**8:30 – 9:00 AM | Welcome & DevOps Mindset**

- Recap of AI/ML session
- DevOps culture and principles
- Benefits and key metrics (DORA, MTTR, deployment frequency)

**9:00 – 10:30 AM | AWS DevOps Services – CI/CD Pipeline**

- **Source Control**: AWS CodeCommit, Git strategies (GitFlow, Trunk-based)
- **Build & Test**: CodeBuild configuration, testing pipelines
- **Deployment**: CodeDeploy with Blue/Green, Canary, and Rolling updates
- **Orchestration**: CodePipeline automation
- **Demo**: Full CI/CD pipeline walkthrough

**10:30 – 10:45 AM | Break**

**10:45 AM – 12:00 PM | Infrastructure as Code (IaC)**

- **AWS CloudFormation**: Templates, stacks, and drift detection
- **AWS CDK (Cloud Development Kit)**: Constructs, reusable patterns, and language support
- **Demo**: Deploying with CloudFormation and CDK
- **Discussion**: Choosing between IaC tools

#### Lunch Break (12:00 – 1:00 PM)

#### Afternoon Session (1:00 – 5:00 PM)

**1:00 – 2:30 PM | Container Services on AWS**

- **Docker Fundamentals**: Microservices and containerization
- **Amazon ECR**: Image storage, scanning, lifecycle policies
- **Amazon ECS & EKS**: Deployment strategies, scaling, and orchestration
- **AWS App Runner**: Simplified container deployment
- **Demo & Case Study**: Microservices deployment comparison

**2:30 – 2:45 PM | Break**

**2:45 – 4:00 PM | Monitoring & Observability**

- **CloudWatch**: Metrics, logs, alarms, and dashboards
- **AWS X-Ray**: Distributed tracing and performance insights
- **Demo**: Full-stack observability setup
- **Best Practices**: Alerting, dashboards, and on-call processes

**4:00 – 4:45 PM | DevOps Best Practices & Case Studies**

- Deployment strategies: Feature flags, A/B testing
- Automated testing and CI/CD integration
- Incident management and postmortems
- Case Studies: Startups and enterprise DevOps transformations

**4:45 – 5:00 PM | Q&A & Wrap-up**

- DevOps career pathways
- AWS certification roadmap

### Key Highlights

#### DevOps Culture and Principles

- **DevOps Mindset**: Collaboration between development and operations teams
- **Cultural Transformation**: Breaking down silos and fostering shared responsibility
- **Key Metrics (DORA)**: Measuring DevOps performance
  - **Deployment Frequency**: How often deployments occur
  - **Lead Time**: Time from code commit to production
  - **MTTR (Mean Time To Recovery)**: Time to recover from failures
  - **Change Failure Rate**: Percentage of deployments causing failures
- **Benefits**: Faster delivery, improved reliability, better collaboration

#### AWS CI/CD Pipeline Services

**AWS CodeCommit:**

- Fully managed source control service
- Git-based version control
- Integration with other AWS services
- Git strategies: GitFlow, Trunk-based development, feature branches

**AWS CodeBuild:**

- Fully managed build service
- Scalable build environments
- Supports multiple programming languages and build tools
- Build artifacts and test reports
- Integration with testing frameworks

**AWS CodeDeploy:**

- Automated deployment service
- Deployment strategies:
  - **Blue/Green**: Zero-downtime deployments with instant rollback
  - **Canary**: Gradual rollout with automatic rollback on errors
  - **Rolling**: Rolling updates with configurable batch sizes
- Application deployment across EC2, Lambda, and on-premises

**AWS CodePipeline:**

- Fully managed continuous delivery service
- Visual workflow builder
- Integration with third-party tools
- Automated pipeline orchestration
- Approval gates and manual intervention points

#### Infrastructure as Code (IaC)

**AWS CloudFormation:**

- Declarative IaC service
- JSON/YAML template syntax
- Stack management and resource provisioning
- Drift detection and stack updates
- Change sets for previewing changes
- Nested stacks for modular infrastructure

**AWS CDK (Cloud Development Kit):**

- Programmatic IaC using familiar programming languages
- TypeScript, Python, Java, C#, and Go support
- Constructs for reusable infrastructure patterns
- Higher-level abstractions and best practices
- Integration with CloudFormation
- CLI tools for deployment and management

**Choosing Between IaC Tools:**

- CloudFormation: Declarative, template-based, AWS-native
- CDK: Programmatic, type-safe, developer-friendly
- Use cases and when to choose each approach

#### Container Services on AWS

**Docker Fundamentals:**

- Containerization benefits and use cases
- Microservices architecture with containers
- Docker image creation and optimization
- Multi-stage builds and best practices

**Amazon ECR (Elastic Container Registry):**

- Fully managed Docker container registry
- Image storage and versioning
- Image scanning for vulnerabilities
- Lifecycle policies for automated cleanup
- Integration with ECS and EKS

**Amazon ECS (Elastic Container Service):**

- Fully managed container orchestration
- Fargate (serverless) and EC2 launch types
- Task definitions and service configurations
- Auto-scaling and load balancing
- Service discovery and networking

**Amazon EKS (Elastic Kubernetes Service):**

- Managed Kubernetes service
- Kubernetes-native orchestration
- Worker nodes management
- Add-ons and ecosystem integration
- Multi-tenant and namespace isolation

**AWS App Runner:**

- Simplified container deployment
- Automatic scaling and load balancing
- Source code or container image deployment
- Built-in CI/CD integration
- Pay-per-use pricing model

#### Monitoring & Observability

**Amazon CloudWatch:**

- **Metrics**: Application and infrastructure metrics
- **Logs**: Centralized log management and analysis
- **Alarms**: Automated alerting and notifications
- **Dashboards**: Custom visualization of metrics and logs
- **Insights**: Automated anomaly detection
- **Composite Alarms**: Complex alerting logic

**AWS X-Ray:**

- Distributed tracing for microservices
- Request flow visualization
- Performance bottleneck identification
- Service map generation
- Integration with Lambda, ECS, and API Gateway
- Trace analysis and filtering

**Best Practices:**

- Setting up effective alerting strategies
- Creating meaningful dashboards
- On-call processes and incident response
- Log aggregation and analysis
- Metric collection and retention policies

#### DevOps Best Practices

**Deployment Strategies:**

- **Feature Flags**: Gradual feature rollouts
- **A/B Testing**: Comparing different versions
- **Canary Deployments**: Risk mitigation through gradual rollout
- **Blue/Green Deployments**: Zero-downtime updates

**Automated Testing:**

- Unit, integration, and end-to-end testing
- Test automation in CI/CD pipelines
- Quality gates and test coverage
- Performance and load testing

**Incident Management:**

- Runbook creation and maintenance
- Incident response procedures
- Postmortem analysis and learning
- Continuous improvement processes

### Key Takeaways

#### DevOps Culture Transformation

- **Cultural Change is Fundamental**: Tools alone don't make DevOps—culture and collaboration are key
- **Measure What Matters**: Use DORA metrics to track DevOps maturity
- **Continuous Improvement**: DevOps is a journey, not a destination
- **Automation First**: Automate repetitive tasks to focus on high-value work

#### CI/CD Best Practices

- **Start Simple, Scale Gradually**: Begin with basic pipelines and add complexity over time
- **Git Strategy Matters**: Choose GitFlow or Trunk-based based on team size and release cadence
- **Testing is Critical**: Integrate automated testing at every stage
- **Deployment Strategies**: Use appropriate deployment strategy based on risk tolerance
- **Infrastructure as Code**: Always use IaC for reproducible and version-controlled infrastructure

#### Container Orchestration

- **Choose Wisely**: ECS for simplicity, EKS for Kubernetes ecosystem
- **Start with Serverless**: Fargate eliminates node management overhead
- **Optimize Images**: Smaller images mean faster deployments and lower costs
- **Security First**: Scan images and use least-privilege IAM policies

#### Observability Strategy

- **Implement Full-Stack Observability**: Metrics, logs, and traces together
- **Proactive Monitoring**: Set up alarms before incidents occur
- **Meaningful Dashboards**: Create dashboards that provide actionable insights
- **Distributed Tracing**: Essential for debugging microservices architectures

### Applying to Work

- **Implement CI/CD Pipelines**: Set up CodePipeline for automated deployments
- **Adopt Infrastructure as Code**: Use CloudFormation or CDK for all infrastructure
- **Containerize Applications**: Start containerizing applications for better portability
- **Set Up Monitoring**: Implement CloudWatch and X-Ray for observability
- **Establish DevOps Practices**: Create runbooks, incident response procedures, and postmortem templates
- **Measure DevOps Metrics**: Track DORA metrics to measure improvement

### Event Experience

Attending the **"DevOps on AWS"** full-day workshop was an intensive and comprehensive learning experience that covered the entire DevOps spectrum from culture to implementation. The event provided both theoretical knowledge and practical demonstrations, giving me a complete understanding of implementing DevOps practices on AWS.

#### Learning DevOps fundamentals

- The session started with **DevOps mindset and culture**, emphasizing that DevOps is more than just tools—it's about collaboration and shared responsibility.
- I learned about **DORA metrics** (Deployment Frequency, Lead Time, MTTR, Change Failure Rate) and how to measure DevOps maturity.
- Understanding the **benefits of DevOps** helped me see the bigger picture beyond technical implementation.

#### AWS CI/CD pipeline deep dive

- The **CodeCommit, CodeBuild, CodeDeploy, and CodePipeline** walkthrough showed me how to build a complete CI/CD pipeline.
- Learning about different **Git strategies** (GitFlow vs Trunk-based) helped me understand when to use each approach.
- The **deployment strategies** (Blue/Green, Canary, Rolling) demo was eye-opening, showing how to minimize risk and downtime.
- The live **CI/CD pipeline demo** demonstrated the entire workflow from code commit to production deployment.

#### Infrastructure as Code mastery

- **CloudFormation** demonstrated how to manage infrastructure declaratively with templates.
- **AWS CDK** showed me how to write infrastructure code in familiar programming languages, making it more maintainable.
- The comparison between CloudFormation and CDK helped me understand when to use each tool.
- Learning about **drift detection** and **change sets** gave me confidence in managing infrastructure safely.

#### Container services exploration

- **Docker fundamentals** refreshed my understanding of containerization and its benefits.
- **Amazon ECR** showed how to manage container images securely with scanning and lifecycle policies.
- Comparing **ECS and EKS** helped me understand the trade-offs between managed services and Kubernetes flexibility.
- **AWS App Runner** introduced a simpler way to deploy containers without managing infrastructure.
- The **microservices deployment case study** provided real-world insights into choosing the right container service.

#### Monitoring and observability setup

- **CloudWatch** comprehensive coverage showed me how to collect metrics, logs, and set up alarms.
- **AWS X-Ray** distributed tracing demonstrated how to debug complex microservices architectures.
- The **full-stack observability demo** showed how to connect all monitoring pieces together.
- Learning about **alerting best practices** and **on-call processes** provided practical operational knowledge.

#### Best practices and case studies

- **Deployment strategies** like feature flags and A/B testing showed advanced techniques for safe deployments.
- **Automated testing integration** demonstrated how to build quality gates into CI/CD pipelines.
- **Incident management** practices and postmortem templates provided structure for handling production issues.
- **Case studies** from startups and enterprises showed real-world DevOps transformations and lessons learned.

#### Career and certification guidance

- The **DevOps career pathways** discussion helped me understand different roles and skill requirements.
- The **AWS certification roadmap** provided clear guidance on certifications relevant to DevOps.
- Understanding the career progression gave me a roadmap for professional development.

#### Practical demonstrations

- Every session included **live demos** that showed real implementations, not just slides.
- The **full CI/CD pipeline walkthrough** demonstrated end-to-end automation.
- **CloudFormation and CDK demos** showed both approaches to infrastructure management.
- **Container deployment comparison** helped me visualize different approaches side by side.

#### Networking and discussions

- The full-day format allowed for **extended networking** with other DevOps practitioners.
- **Q&A sessions** provided opportunities to get answers to specific questions.
- Discussing **real-world challenges** with peers helped me understand common pitfalls and solutions.

#### Lessons learned

- **DevOps is a cultural transformation** that requires buy-in from both development and operations teams.
- **Automation is essential** but must be implemented thoughtfully to avoid creating technical debt.
- **Infrastructure as Code** is non-negotiable for modern DevOps practices.
- **Monitoring and observability** are crucial for maintaining production systems.
- **Start simple and iterate** rather than trying to implement everything at once.
- **Measure everything** using DORA metrics to track improvement over time.

#### Some event photos

![Event Photo 1](image/z7298630361309_3036e52fa3128a0b249db756b989f5c6.jpg)

![Event Photo 2](image/z7298630366305_65ae49f27328bf849af135b4cfff1767.jpg)

![Event Photo 3](image/z7298630370993_c20768c5b9e640f2ca3c2ce078e3a3ec.jpg)

![Event Photo 4](image/z7298630375144_4583b3edb78627b34c9d88352267ddf7.jpg)

![Event Photo 5](image/z7298630380535_561d48ad979b2c332ec6a7b56710e663.jpg)

![Event Photo 6](image/z7298630388128_325c8c5dc798ddd8422da0e56d495f95.jpg)

![Event Photo 7](image/z7298630390535_8ed045b2b80522fd9a72b0127f3d85b0.jpg)

![Event Photo 8](image/z7298630394796_ecda1fa1a25cfdd217c51fcd2d72809b.jpg)

![Event Photo 9](image/z7298630401431_b0bf76f53263d992ad93aa9d5496540b.jpg)

![Event Photo 10](image/z7298630406303_46830cfd367a2b6d69ff75d2352a0cb8.jpg)

![Event Photo 11](image/z7298630408929_d2d767f743b3a471374509b68933c88e.jpg)

![Event Photo 12](image/z7298630415362_ce26a4750c9de87db3eecf236030aa19.jpg)

![Event Photo 13](image/z7298630419310_513a375c5a2bd8b4f7f2d848f13f003f.jpg)

![Event Photo 14](image/z7298630424965_17d1f60918cec5b098b590e7626ca8ee.jpg)

![Event Photo 15](image/z7298630430690_dbf30a236ce85288eb90a686f319508b.jpg)

![Event Photo 16](image/z7298630433981_f965face413d66ad46c5e5152ab35d2f.jpg)

![Event Photo 17](image/z7298630439495_6e292ce1fff7bd22a27362ee41737332.jpg)

![Event Photo 18](image/z7298630444192_3106303a32acd87f93678975aa66e750.jpg)

![Event Photo 19](image/z7298630450030_0a52b29978f8ecfff1a646f49a666448.jpg)

![Event Photo 20](image/z7298630452206_3d73de898a0f27bc3874a2f2491dbdd7.jpg)

![Event Photo 21](image/z7298630458804_4603aef33d4acaa8762ef7b98ce65f84.jpg)

![Event Photo 22](image/z7298630461955_93c3e64a783c3210cee4ac40d249e09c.jpg)

![Event Photo 23](image/z7298630468935_299b88ec643a3419f925d7d8425f0bfb.jpg)

![Event Photo 24](image/z7298630474128_4c7ab88671b9cce5332da424dc9a70cd.jpg)

![Event Photo 25](image/z7298630478789_50673488bbcd83a59893708fd5593474.jpg)

![Event Photo 26](image/z7298630483462_c6708611746ba06aada386e8288fa8d9.jpg)

![Event Photo 27](image/z7298630487165_ba3ad8cf1fef775e68a2dc435468bcc7.jpg)

![Event Photo 28](image/z7298630493000_771103cb4910d1b05c9584761cd13e49.jpg)

![Event Photo 29](image/z7298630496428_c0050cf12d562ad17c90569e0ca8f855.jpg)

![Event Photo 30](image/z7298630499752_e2d8d2fa73d6be1ca6c34d36b0117404.jpg)

> Overall, this full-day workshop provided me with comprehensive knowledge of AWS DevOps services and best practices. The combination of cultural transformation principles, practical tool demonstrations, and real-world case studies gave me confidence to implement DevOps practices in my projects. The depth and breadth of content covered everything from CI/CD pipelines to container orchestration and observability, providing a complete foundation for building DevOps capabilities on AWS.
