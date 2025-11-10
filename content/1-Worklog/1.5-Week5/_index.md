---
title: "Worklog Week 5"
date: 2025-10-04
weight: 1
chapter: false
pre: " <b> 1.5. </b> "
---

### Week 5 Objectives

This week, my main goal was to master the concepts and security services in AWS, including the shared responsibility model, access management, encryption, and resource protection.  
I also familiarized myself with various AWS tools and services to apply them in hands-on practice.

Specific objectives include:
* Understand the **Shared Responsibility Model** of AWS.
* Master key AWS security services: **IAM**, **Cognito**, **Security Hub**, **KMS**, **Identity Center**.
* Improve resource management and security through **IAM Permissions Boundaries**, **Resource Tags**, and encryption techniques.

---

### Weekly Tasks

| Day | Task                                                                                                                                                                                                                                                        | Start Date | Completion Date | Reference Source                                      |
| --- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------- | ---------------- | ----------------------------------------------------- |
| 2   | - Study the theory of the **Shared Responsibility Model** and AWS security principles. <br> - Review documentation for AWS security services: <br>&emsp;+ **Amazon IAM** <br>&emsp;+ **Amazon Cognito** <br>&emsp;+ **AWS Identity Center** <br>&emsp;+ **AWS KMS** <br>&emsp;+ **AWS Security Hub** | 04/10/2025  | 04/10/2025       | [AWS Study Group](https://000013.awsstudygroup.com/)  |
| 3   | - **Hands-on:** <br>&emsp;+ Configure and use **AWS Security Hub** to monitor and detect security issues. <br>&emsp;+ Create and manage **IAM Users**, **Roles**, and **Policies** for AWS accounts. <br>&emsp;+ Create **IAM Groups** and manage access permissions for user groups. | 05/10/2025  | 05/10/2025       | [AWS Study Group](https://000022.awsstudygroup.com/)  |
| 4   | - **Hands-on:** <br>&emsp;+ Optimize **EC2** costs using **Lambda** for automated start/stop of EC2 instances. <br>&emsp;+ Manage EC2 access via **Resource Tags** using **IAM**. <br>&emsp;+ Configure **IAM Permission Boundaries** to limit user privileges. <br>&emsp;+ Encrypt data using **AWS KMS**. | 06/10/2025  | 06/10/2025       | [AWS Study Group](https://000027.awsstudygroup.com/)  |
| 5   | - **Advanced Practice:** <br>&emsp;+ Learn and apply security methods in **AWS Organizations** for multi-account management. <br>&emsp;+ Enhance proficiency in **AWS Identity Center** for managing and synchronizing users and groups across AWS services. | 07/10/2025  | 07/10/2025       | [AWS Study Group](https://000030.awsstudygroup.com/)  |

---

### Results Achieved in Week 5

During this week, I achieved significant progress in understanding and applying AWS security services, effectively bridging theory with practice. Specifically:

1. **Understanding and Applying the AWS Shared Responsibility Model**
    - I fully grasped that AWS is responsible for the security of the cloud infrastructure, while users are responsible for securing their own data and applications.
    - This clarified my role in ensuring compliance and protection when deploying services on AWS.

2. **Theoretical Knowledge of AWS Core Security Services**
    - **Amazon IAM**: Learned how to create and manage **Users**, **Roles**, and **Policies** to control user and group access.
    - **Amazon Cognito**: Studied user management and authentication for AWS applications.
    - **AWS Identity Center**: Understood how to link and manage user access across multiple AWS services.
    - **AWS Security Hub**: Configured and utilized it to monitor and detect security threats.
    - **AWS KMS**: Practiced encrypting data at rest and securing sensitive data using encryption keys.

3. **Practical Implementation of AWS Security Services**
    - Successfully installed and configured **AWS Security Hub** for continuous monitoring and vulnerability detection.
    - Configured **IAM Permissions Boundaries** to restrict user privileges and prevent unauthorized access.
    - **EC2 Cost Optimization with Lambda**: Automated the shutdown of unused EC2 instances to minimize operational costs.
    - **EC2 Access Control via IAM & Resource Tags**: Applied IAM Policies that use **Tags** to precisely define access scope.

4. **Enhanced AWS Resource Management Skills**
    - Created and managed **IAM Groups** and **Policies**, improving group-based access control.
    - Learned how to manage multiple AWS accounts using **AWS Organizations**, ensuring consistent security policies across the organization.

---

# LAB PRACTICE

---

## Table of Contents
- [Lab 18](#lab-18)
    - [Lab 22](#lab-22)
        - [VPC](#vpc)
        - [EC2](#ec2)
        - [Slack](#slack)
        - [Lambda + EventBridge](#lambda--eventbridge)
        - [Test Results](#test-results)
- [Lab 27](#lab-27)
- [Lab 28](#lab-28)
    - [Regions & EC2](#regions--ec2)
    - [Tags](#tags)
- [Lab 30](#lab-30)
- [Lab 33](#lab-33)

---

## Lab 18

Illustration:

![Lab 18 — Overview](lab_18/img.png "Lab 18 — Overview")

---

## Lab 22

### VPC

VPC configuration illustrations:

- ![VPC — Diagram 1](lab_22/img.png "VPC — Diagram 1")
- ![VPC — Diagram 2](lab_22/img_1.png "VPC — Diagram 2")
- ![VPC — Diagram 3](lab_22/img_2.png "VPC — Diagram 3")
- ![VPC — Diagram 4](lab_22/img_3.png "VPC — Diagram 4")

### EC2

EC2 configuration illustrations:

- ![EC2 — Screen 1](lab_22/img_4.png "EC2 — Screen 1")
- ![EC2 — Screen 2](lab_22/img_5.png "EC2 — Screen 2")

### Slack

> **Note (New UI):** Re-select the **channel** during setup to get the correct **Webhook URL**.

- ![Slack — Example 1](lab_22/img_6.png "Slack — Example 1")
- ![Slack — Get Webhook URL](lab_22/img_8.png "Slack — Get Webhook URL")
- ![Slack — Configure Webhook](lab_22/img_7.png "Slack — Configure Webhook")

### Lambda + EventBridge

Lambda and EventBridge configuration illustrations:

- ![Lambda — Detail 1](lab_22/img_10.png "Lambda — Detail 1")
- ![Lambda — Detail 2](lab_22/img_11.png "Lambda — Detail 2")
- ![Lambda — Detail 3](lab_22/img_12.png "Lambda — Detail 3")
- ![Lambda — Detail 4](lab_22/img_13.png "Lambda — Detail 4")
- ![Lambda — Detail 5](lab_22/img_15.png "Lambda — Detail 5")
- ![Lambda — Detail 6](lab_22/img_16.png "Lambda — Detail 6")
- ![Lambda — Detail 7](lab_22/img_17.png "Lambda — Detail 7")

### Test Results

- ![Test Result — 1](lab_22/img_18.png "Test Result — 1")
- ![Test Result — 2](lab_22/img_20.png "Test Result — 2")
- ![Test Result — 3](lab_22/img_19.png "Test Result — 3")
- ![Test Result — 4](lab_22/img_21.png "Test Result — 4")

---

## Lab 27

Illustrations:

![Lab 27 — Image 1](Lab_27/img.png "Lab 27 — Image 1")
![Lab 27 — Image 2](Lab_27/img_1.png "Lab 27 — Image 2")
![Lab 27 — Image 3](Lab_27/img_2.png "Lab 27 — Image 3")
![Lab 27 — Image 4](Lab_27/img_3.png "Lab 27 — Image 4")
![Lab 27 — Image 5](Lab_27/img_4.png "Lab 27 — Image 5")
![Lab 27 — Image 6](Lab_27/img_5.png "Lab 27 — Image 6")

---

## Lab 28

Illustrations:

![Lab 28 — Image 1](Lab_28/img.png "Lab 28 — Image 1")
![Lab 28 — Image 2](Lab_28/img_1.png "Lab 28 — Image 2")
![Lab 28 — Image 3](Lab_28/img_2.png "Lab 28 — Image 3")
![Lab 28 — Image 4](Lab_28/img_3.png "Lab 28 — Image 4")
![Lab 28 — Image 5](Lab_28/img_4.png "Lab 28 — Image 5")

### Regions & EC2

- EC2 in **ap-northeast-1 (Tokyo)**  
  ![EC2 — ap-northeast-1 (Tokyo)](Lab_28/img_5.png "EC2 — ap-northeast-1 (Tokyo)")

- EC2 in **us-east-1 (North Virginia)**  
  ![EC2 — us-east-1 (North Virginia)](Lab_28/img_6.png "EC2 — us-east-1 (North Virginia)")

### Tags

Sample key/value pairs used:

| Key  | Value   |
|------|---------|
| Name | Example |
| Team | Beta    |
| Team | Alpha   |
| Team | TEST    |

Tag interface examples:

- **Name = Example**, **Team = Beta**  
  ![Tags — Beta](Lab_28/img_7.png "Tags — Name=Example; Team=Beta")

- **Name = Example**, **Team = Alpha**  
  ![Tags — Alpha](Lab_28/img_8.png "Tags — Name=Example; Team=Alpha")

![Lab 28 — Image 6](Lab_28/img_9.png "Lab 28 — Image 6")

- **Team = TEST**  
  ![Tags — TEST](Lab_28/img_10.png "Tags — Team=TEST")

---

## Lab 30

- **Policies:**

![img.png](Lab_30/img.png)  
![img_1.png](Lab_30/img_1.png)

- **IAM:**

![img_2.png](Lab_30/img_2.png)  
![img_3.png](Lab_30/img_3.png)

- **Check Permission:**

![img_4.png](Lab_30/img_4.png)  
![img_5.png](Lab_30/img_5.png)

---

## Lab 33

- **Policies**

![img.png](Lab_33/img.png)

- **Role**

![img_1.png](Lab_33/img_1.png)

- **User**

![img_2.png](Lab_33/img_2.png)

- **KMS**

![img_3.png](Lab_33/img_3.png)

- **S3**

![img_4.png](Lab_33/img_4.png)  
![img_5.png](Lab_33/img_5.png)  
![img_6.png](Lab_33/img_6.png)

- **CloudTrail**

![img_7.png](Lab_33/img_7.png)  
![img_8.png](Lab_33/img_8.png)

- **Athena**

![img_9.png](Lab_33/img_9.png)

- **Test after applying ACLs**

![img_10.png](Lab_33/img_10.png)  
![img_11.png](Lab_33/img_11.png)  
![img_12.png](Lab_33/img_12.png)  
![img_13.png](Lab_33/img_13.png)

---

### Conclusion

During Week 5, I significantly improved my ability to use AWS security and access management tools.  
These knowledge and skills form a solid foundation for implementing advanced security solutions and cost optimization in future AWS projects.  
The lab exercises reinforced theoretical understanding and enhanced my practical skills for working effectively in real AWS environments.
