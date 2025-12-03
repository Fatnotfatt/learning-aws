---
title: "Event 3"
date: 2025-09-10
weight: 1
chapter: false
pre: " <b> 4.3. </b> "
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

![Event Photo 1](image/image.png)

![Event Photo 2](image/z7256923057067_de0a760b31cc381bc2bde6b52ecfdfba.jpg)

![Event Photo 3](image/z7256923062008_d22e5b0919d4b0b74bb8a7c910ddfb1f.jpg)

![Event Photo 4](image/z7256923066503_a86dccceffb9015ed8f00fbfd61aa7be.jpg)

![Event Photo 5](image/z7256923071950_0d3632939addd9b0684f8bff2c3e1c47.jpg)

![Event Photo 6](image/z7256923076166_a5096f1705aa25115465f612c36c5b25.jpg)

![Event Photo 7](image/z7256923080742_7662392d86a81bd845118020bed8df64.jpg)

![Event Photo 8](image/z7256923083373_d88e351802c7f974bd1663bc0e3f88d9.jpg)

![Event Photo 9](image/z7256923087749_1dc51ba7fd23c4977ea952e46c0e0826.jpg)

![Event Photo 10](image/z7256923091124_676ddf386e4458fdc2c559e213c7e280.jpg)

![Event Photo 11](image/z7256923095334_4155afecb768541621090af29d7aaeff.jpg)

![Event Photo 12](image/z7256923098889_5cc3358cfa752fbc6bf21f622592cfbd.jpg)

![Event Photo 13](image/z7256923103750_e5306dcdc3aff953e98469ff743f37bb.jpg)

![Event Photo 14](image/z7256923108763_89fc53e26fd456a6644d2fc5f528ff6d.jpg)

![Event Photo 15](image/z7256923115675_331816511f704beafce72525bf16f555.jpg)

![Event Photo 16](image/z7256923118416_0104e5c70ff91112164ee4737ab8e3b1.jpg)

![Event Photo 17](image/z7256923123759_a426bc7d855e4ce66c37adc2ad9ec5d4.jpg)

![Event Photo 18](image/z7256923128692_bb1338cee3ec608262dcd082edd32d42.jpg)

![Event Photo 19](image/z7256923131399_361f7c6882ca796ea269540c1c95549b.jpg)

![Event Photo 20](image/z7256923136517_b6732408d40d1f2ce297720b96d71128.jpg)

![Event Photo 21](image/z7256923140996_2881820c88e78942ca9fb6336f1eb71a.jpg)

![Event Photo 22](image/z7256923145161_ebea32e838f4b289ce75b958afdf5434.jpg)

![Event Photo 23](image/z7256923149592_96bee441ee5d2911416d0274cdbfd419.jpg)

![Event Photo 24](image/z7256923155593_f2eb341c4e1b6433db8789e5f33b900a.jpg)

![Event Photo 25](image/z7256923156433_6024e47e9650155875b8d310d1016237.jpg)

![Event Photo 26](image/z7256923161589_bcccd7a79d7370a2f690e16c0e75b457.jpg)

![Event Photo 27](image/z7256923166551_c9010731bd7fcb5642fe4e6df7f18e74.jpg)

![Event Photo 28](image/z7256923169863_46bbb82f8ece8e93fb18608d7d2eeffe.jpg)

![Event Photo 29](image/z7256923175258_4732f2b81870d939f4b832213c7aa6ba.jpg)

![Event Photo 30](image/z7256923179628_b60038f3b785e40d8d65581a075f0526.jpg)

![Event Photo 31](image/z7256923183636_5b6437c3d6445e749224df8791e9d25e.jpg)

![Event Photo 32](image/z7256923189037_7f9a74d2204b68744ece5b7498de077e.jpg)

![Event Photo 33](image/z7256923193203_8bd3d7ecdb6a646a50be2d7f195cce4f.jpg)

![Event Photo 34](image/z7256923197879_715f22b7881fc8dcf1238b414cb42533.jpg)

![Event Photo 35](image/z7256923202396_28cbbd6f2c74a52a726ba697fcce27e6.jpg)

![Event Photo 36](image/z7256923205208_3b37942e6ef120ddfa04965089d14151.jpg)

![Event Photo 37](image/z7256923211426_22c8eb0d6095d0e8f7d6e5265083ce36.jpg)

![Event Photo 38](image/z7256923214808_f76ca63284c8408902b4db9d3abf3a14.jpg)

![Event Photo 39](image/z7256923219535_5c66be16b521fcfc42347670bd596684.jpg)

![Event Photo 40](image/z7256923224273_9b98cd0300c9fca71b45487342316c36.jpg)

![Event Photo 41](image/z7256923232409_7ad5c1150e68c2036e1c30ede50d787b.jpg)

![Event Photo 42](image/z7256923232410_7033dfbb08821679dfea6bb5054bc6d0.jpg)

![Event Photo 43](image/z7256923236259_d6cf8f95ce1bb30175f4d970cd6e08b3.jpg)

![Event Photo 44](image/z7256923240481_d66d7bbe4958ae70ae82a7e777bffeed.jpg)

![Event Photo 45](image/z7256923245350_56c885c0f625df2e64f0b83ba8ef1b23.jpg)

![Event Photo 46](image/z7256923250091_38505c6c05c7c3036c345c5d9e34b3b5.jpg)

![Event Photo 47](image/z7256923254554_e776d2fffbe76ca47770e2e7ee26a120.jpg)

![Event Photo 48](image/z7256923259216_6ef6a760ea2c56aecbe5aa52aafcbbf3.jpg)

![Event Photo 49](image/z7256923263478_63c42784f2113aebe0e7c7bb4c2a6810.jpg)

![Event Photo 50](image/z7256923266278_21ec2e32c5996ef8cf2eafa43f6fb7d1.jpg)

![Event Photo 51](image/z7256923281028_2083adf56d02c54a9291d8eecc069f0e.jpg)

![Event Photo 52](image/z7256923369016_82088dc14651b01d70b82beabf5a4c81.jpg)

![Event Photo 53](image/z7256923373843_e39cfa4a5ec112cdd2974d26c119569e.jpg)

![Event Photo 54](image/z7256923377405_cc7b8b4d5d2a1d4165391e3acc6a1656.jpg)

![Event Photo 55](image/z7256923379905_4b7aaec6954e8f3eb7f3690313b966a1.jpg)

![Event Photo 56](image/z7256923384569_cc8b6660aa329ed409042dbb2f47e629.jpg)

![Event Photo 57](image/z7256923389561_4e15bd74626d339661400933b58acd88.jpg)

![Event Photo 58](image/z7256923394717_1e1773d8a5f46659ed975715a2c79c74.jpg)

![Event Photo 59](image/z7256923399109_60090bf97b373c64e9a4edfec865fd39.jpg)

![Event Photo 60](image/z7256923403819_5c199e9c210d883e0f93dbf3320ab6db.jpg)

![Event Photo 61](image/z7256923407903_055083550bb97db790ae9646490da85b.jpg)

![Event Photo 62](image/z7256923414487_c27c260887d659d0e678fe4f53d1e70a.jpg)

![Event Photo 63](image/z7256923416568_5ff9539849b0e15b6da0b9d1b4ab6a43.jpg)

![Event Photo 64](image/z7256923420886_156555db8a90eccea37eb6fd84822e06.jpg)

![Event Photo 65](image/z7256923423501_7eb661393ff58fd362328f4669b77553.jpg)

![Event Photo 66](image/z7256923430428_b2f646ea9e1688df36c379ab090ed0b7.jpg)

![Event Photo 67](image/z7256923434046_7a3c2c2aa57b23266cc22ca430883cf4.jpg)

![Event Photo 68](image/z7256923439055_19f48568618d6e3c62627993192868ec.jpg)

![Event Photo 69](image/z7256923442383_5d5e5758b9f40005f328ba31b97c4c9c.jpg)

![Event Photo 70](image/z7256923446412_703dfef2ad7882ee9653917c1be33db6.jpg)

![Event Photo 71](image/z7256923455138_1c22dc76b58411d573ae86a050b7bc5b.jpg)

![Event Photo 72](image/z7256923456168_0772b0963564d0cb4ebb15e487ab9cb3.jpg)

![Event Photo 73](image/z7256923460441_2c79fcdedf1d03cba5c83466c4978342.jpg)

![Event Photo 74](image/z7256923465798_10f0ba5821132faa9adeb604528d8a67.jpg)

![Event Photo 75](image/z7256923469475_319756712ed72121dca333e5de3b4e24.jpg)

![Event Photo 76](image/z7256923473553_fa2612fde8ed52a537f981b913b7ab96.jpg)

![Event Photo 77](image/z7256923477860_9cbaf2e96ccce74c2af81d3595199588.jpg)

![Event Photo 78](image/z7256923482823_57a2e31cb2ad1ea3b1374f9e676cd86f.jpg)

![Event Photo 79](image/z7256923488192_c3f885d67a8b86ee7113ce61c28fc590.jpg)

![Event Photo 80](image/z7256923491200_64d84af6dea8d8540b15e54d2bf6d54a.jpg)

![Event Photo 81](image/z7256923495149_2cb37f62d502cbeb263710f920321206.jpg)

![Event Photo 82](image/z7256923497668_cbad316a61763b53c00b0adf5542317e.jpg)

![Event Photo 83](image/z7256923503853_dbfa4f564971330a65d2b87d1ec37d4e.jpg)

![Event Photo 84](image/z7256923507973_43ebf56728cf0664f5ae004634e9505b.jpg)

![Event Photo 85](image/z7256923513966_3780d543a8a90105314c284189c6b81d.jpg)

![Event Photo 86](image/z7256923515774_ad5f196d619332b82e354b850689f402.jpg)

![Event Photo 87](image/z7256923520387_10ccd0ce4ea224eb53676e93759af27e.jpg)

![Event Photo 88](image/z7256923525637_a0311f27d9e1bc604f0f917930282bbd.jpg)

![Event Photo 89](image/z7256923529323_5e97bc712d0d7a879bacb4db9de94963.jpg)

![Event Photo 90](image/z7256923535689_2fa9b7044e36313567cc36164ba2730f.jpg)

![Event Photo 91](image/z7256923539890_a0d0eedd027185dbac93b69b2e9c9a6c.jpg)

![Event Photo 92](image/z7256923543659_26dd5af79ccaf0ffe8b767fbcac1ba89.jpg)

![Event Photo 93](image/z7256923546531_b68d05988b8f7330fe84966ccc39cbbe.jpg)

![Event Photo 94](image/z7256923551162_f61fc9dac84307e2c9cce5d1110c88ca.jpg)

![Event Photo 95](image/z7256923555690_3c86e9b1d689854eb2d438197b37c679.jpg)

![Event Photo 96](image/z7256923560254_76f5695ea353e2e82e9cbc1b6e55beea.jpg)

![Event Photo 97](image/z7256923564023_e84ba06c8263b5eb9d4c6997761b70ae.jpg)

![Event Photo 98](image/z7256923569449_30293af9fa5bbae1d42fdbe2888e8f7b.jpg)

![Event Photo 99](image/z7256923572936_824c3d56044e396516160a855ec470a5.jpg)

![Event Photo 100](image/z7256923581474_7d22aab32e474bb8d3a20d4ca3960f38.jpg)

![Event Photo 101](image/z7256923583241_ddaabf05e26033b362996685f1409e59.jpg)

> Overall, this full-day workshop provided me with comprehensive knowledge of AWS DevOps services and best practices. The combination of cultural transformation principles, practical tool demonstrations, and real-world case studies gave me confidence to implement DevOps practices in my projects. The depth and breadth of content covered everything from CI/CD pipelines to container orchestration and observability, providing a complete foundation for building DevOps capabilities on AWS.
