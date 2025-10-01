---
title: "Worklog Week 3"
date: 2025-09-22
weight: 1
chapter: false
pre: " <b> 1.3. </b> "
---
{{% notice warning %}}
⚠️ **Note:** The following information is for reference purposes only. Please **do not copy verbatim** for your own report, including this warning.
{{% /notice %}}

### Week 3 Goals:

* Gain a solid understanding of Amazon EC2 and its ecosystem (AMI, Backup, Key Pair, EBS, Instance Store, User Data, Metadata).
* Learn about EC2 Auto Scaling and its role in elasticity and cost optimization.
* Explore related compute services including EFS, FSx, Lightsail, and AWS MGN.
* Strengthen AWS storage knowledge with hands-on labs covering S3, AWS Backup, and Storage Gateway.
* Develop practical skills in configuring, managing, and scaling EC2 workloads.

---

### Tasks for this week:

| Day | Task                                                                                                                                             | Start Date | Completion Date | Reference                                                                 |
| --- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- | ---------------- | ------------------------------------------------------------------------- |
| 1   | - Theory: <br>&emsp; + EC2 overview: AMI, Backup, Key Pair                                                                                       | 22/09/2025 | 22/09/2025       | [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)                  |
| 2   | - Theory: <br>&emsp; + EBS (Elastic Block Store) <br>&emsp; + Instance Store                                                                     | 23/09/2025 | 23/09/2025       | [AWS EBS Documentation](https://docs.aws.amazon.com/ebs/)                  |
| 3   | - Theory: <br>&emsp; + EC2 User Data <br>&emsp; + EC2 Metadata                                                                                   | 24/09/2025 | 24/09/2025       | [AWS EC2 User Guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/) |
| 4   | - Theory: <br>&emsp; + EC2 Auto Scaling <br>&emsp; + Related services: EFS, FSx, Lightsail, MGN                                                  | 25/09/2025 | 25/09/2025       | [AWS Auto Scaling](https://docs.aws.amazon.com/autoscaling/)               |
| 5   | - **Hands-on:** <br>&emsp; + Lab 57: Start with Amazon S3                                                                                        | 26/09/2025 | 26/09/2025       | [AWS Study Group - Lab57](https://000057.awsstudygroup.com/)               |
| 6   | - **Hands-on:** <br>&emsp; + Lab 13: Deploy AWS Backup to the System                                                                             | 27/09/2025 | 27/09/2025       | [AWS Study Group - Lab13](https://000013.awsstudygroup.com/)               |
| 7   | - **Hands-on:** <br>&emsp; + Lab 24: Using AWS Storage Gateway                                                                                   | 28/09/2025 | 28/09/2025       | [AWS Study Group - Lab24](https://000024.awsstudygroup.com/)               |

---

### Week 3 Achievements:

* **Built strong theoretical knowledge** of Amazon EC2, including:
  * AMI and backup strategies for resilience.
  * Key Pair usage for secure SSH authentication.
  * Differences between **EBS** (persistent storage) and **Instance Store** (ephemeral storage).
  * How **User Data** and **Metadata** scripts automate instance initialization and provide dynamic configuration.
  * The role of **EC2 Auto Scaling** in maintaining performance and cost efficiency.

* **Expanded understanding of related services**:
  * Amazon EFS and FSx for shared and high-performance file storage.
  * Amazon Lightsail as a simplified alternative for small-scale workloads.
  * AWS MGN for migrating workloads into AWS.

* **Completed practical labs**:
  * Launched and managed an S3 bucket (Lab57).
  * Implemented AWS Backup to protect workloads (Lab13).
  * Integrated on-premises systems with AWS using Storage Gateway (Lab24).

* **Key skills acquired**:
  * Confidently distinguish storage types (EBS vs Instance Store vs EFS vs FSx).
  * Automate EC2 lifecycle with User Data and Auto Scaling.
  * Combine backup and hybrid storage solutions to create more resilient architectures.

**Direction:**  
This week provided a deeper dive into **compute and storage fundamentals**. By combining theoretical concepts with hands-on practice, I strengthened my ability to not only launch and manage EC2 instances but also design scalable, reliable, and cost-efficient architectures that integrate with AWS’s broader storage and migration services.
