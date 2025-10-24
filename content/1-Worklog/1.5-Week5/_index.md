---
title: "Worklog Week 5"
date: 2025-10-04
weight: 1
chapter: false
pre: " <b> 1.5. </b> "
---
{{% notice warning %}}
⚠️ **Note:** The following information is for reference purposes only. Please **do not copy verbatim** for your own report, including this warning.
{{% /notice %}}

### Week 5 Goals:

In this week, my main goal was to grasp the concepts and services related to security in AWS, including shared responsibility models, access management, encryption, and securing resources. I also became familiar with AWS tools and services to apply them in practical exercises.

The specific goals included:
* Understand the **Share Responsibility Model** of AWS.
* Master key AWS security services: **IAM**, **Cognito**, **Security Hub**, **KMS**, and **Identity Center**.
* Improve skills in managing resources and security through **IAM Permissions Boundary**, **Resource Tags**, and encryption techniques.

### Tasks to be Implemented This Week:

| Day | Task                                                                                                                                                                                                                                                                  | Start Date  | End Date    | Resource Link                                        |
| --- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----------- | ---------------------------------------------------- |
| 2   | - Learn the theory about the **Share Responsibility Model** and AWS security principles. <br> - Read documentation on AWS security services: <br>&emsp;+ **Amazon IAM** <br>&emsp;+ **Amazon Cognito** <br>&emsp;+ **AWS Identity Center** <br>&emsp;+ **AWS KMS** <br>&emsp;+ **AWS Security Hub**  | 04/10/2025  | 04/10/2025  | [AWS Study Group](https://000013.awsstudygroup.com/)  |
| 3   | - **Practical Exercise:** <br>&emsp;+ Set up and use **AWS Security Hub** for security monitoring and issue detection. <br>&emsp;+ Create and manage **IAM Users**, **Roles**, and **Policies** for AWS accounts. <br>&emsp;+ Create **IAM Groups** and manage access permissions for user groups. | 05/10/2025  | 05/10/2025  | [AWS Study Group](https://000022.awsstudygroup.com/)  |
| 4   | - **Practical Exercise:** <br>&emsp;+ Optimize **EC2** costs with **Lambda** to automate stopping or starting EC2 instances. <br>&emsp;+ Manage EC2 access via **Resource Tags** through **IAM**. <br>&emsp;+ Set up **IAM Permission Boundaries** to limit user permissions. <br>&emsp;+ Encrypt data with **AWS KMS**. | 06/10/2025  | 06/10/2025  | [AWS Study Group](https://000027.awsstudygroup.com/)  |
| 5   | - **Advanced Practice:** <br>&emsp;+ Explore and apply security management in **AWS Organizations** for managing multiple AWS accounts. <br>&emsp;+ Enhance the usage of **AWS Identity Center** to manage and synchronize users and groups across multiple AWS services.                                           | 07/10/2025  | 07/10/2025  | [AWS Study Group](https://000030.awsstudygroup.com/)  |

### Achievements of Week 5:

This week, I achieved significant progress in mastering AWS security services and applying theoretical knowledge into practical tasks. Specifically:

1. **Understanding and Applying the Share Responsibility Model of AWS**:
    - I gained a clear understanding of how AWS shares responsibility with customers for securing infrastructure and applications. This helped me define my role in managing security while deploying services on AWS.

2. **Theoretical Knowledge of Key AWS Security Services**:
    - **Amazon IAM**: Learned how to create and manage **IAM Users**, **Roles**, and **Policies**, helping me control access to resources.
    - **Amazon Cognito**: Explored how to manage user authentication for applications in AWS.
    - **AWS Identity Center**: Investigated how to connect users to AWS services through Identity Center.
    - **AWS Security Hub**: Configured and used it for security monitoring and threat detection.
    - **AWS KMS**: Practiced encrypting data at rest and securing sensitive data with encryption keys.

3. **Practical Application of AWS Security Services**:
    - Successfully set up and configured **AWS Security Hub** to monitor security issues, detecting vulnerabilities early.
    - Configured **IAM Permissions Boundary** to restrict user permissions and ensure minimal access.
    - **Optimizing EC2 Costs with Lambda**: Used Lambda to automate the stopping of idle EC2 instances to reduce costs.
    - Managed EC2 access with **IAM Policies** and **Resource Tags**.

4. **Improved Resource Management and Security Skills**:
    - Created and managed **IAM Groups** and **Policies** to control user access efficiently.
    - Explored **AWS Organizations** for managing multiple AWS accounts and ensuring consistent security policies across the organization.

# LAB PRACTICE

---

## Mục lục
- [Lab 18](#lab-18)
    - [Lab 22](#lab-22)
        - [VPC](#vpc)
        - [EC2](#ec2)
        - [Slack](#slack)
        - [Lambda + EventBridge](#lambda--eventbridge)
        - [Kết quả kiểm thử (Test Result)](#kết-quả-kiểm-thử-test-result)
- [Lab 27](#lab-27)
- [Lab 28](#lab-28)
    - [Vùng (Regions) & EC2](#vùng-regions--ec2)
    - [Thẻ (Tags)](#thẻ-tags)

---

## Lab 18

Hình minh họa:

![Lab 18 — Tổng quan](lab_18/img.png "Lab 18 — Tổng quan")

---

## Lab 22

### VPC

Hình minh họa cấu hình VPC:

- ![VPC — Sơ đồ 1](lab_22/img.png "VPC — Sơ đồ 1")
- ![VPC — Sơ đồ 2](lab_22/img_1.png "VPC — Sơ đồ 2")
- ![VPC — Sơ đồ 3](lab_22/img_2.png "VPC — Sơ đồ 3")
- ![VPC — Sơ đồ 4](lab_22/img_3.png "VPC — Sơ đồ 4")

### EC2

Hình minh họa cấu hình EC2:

- ![EC2 — Màn hình 1](lab_22/img_4.png "EC2 — Màn hình 1")
- ![EC2 — Màn hình 2](lab_22/img_5.png "EC2 — Màn hình 2")

### Slack

> **Lưu ý (UI mới):** Cần chọn lại **kênh (channel)** trong phần cấu hình để lấy đúng **Webhook URL**.

- ![Slack — Ví dụ 1](lab_22/img_6.png "Slack — Ví dụ 1")
- ![Slack — Lấy Webhook URL](lab_22/img_8.png "Slack — Lấy Webhook URL")
- ![Slack — Cấu hình Webhook](lab_22/img_7.png "Slack — Cấu hình Webhook")

### Lambda + EventBridge

Hình minh họa cấu hình Lambda và EventBridge:

- ![Lambda — Chi tiết 1](lab_22/img_10.png "Lambda — Chi tiết 1")
- ![Lambda — Chi tiết 2](lab_22/img_11.png "Lambda — Chi tiết 2")
- ![Lambda — Chi tiết 3](lab_22/img_12.png "Lambda — Chi tiết 3")
- ![Lambda — Chi tiết 4](lab_22/img_13.png "Lambda — Chi tiết 4")
- ![Lambda — Chi tiết 5](lab_22/img_15.png "Lambda — Chi tiết 5")
- ![Lambda — Chi tiết 6](lab_22/img_16.png "Lambda — Chi tiết 6")
- ![Lambda — Chi tiết 7](lab_22/img_17.png "Lambda — Chi tiết 7")

### Kết quả kiểm thử (Test Result)

- ![Test Result — 1](lab_22/img_18.png "Test Result — 1")
- ![Test Result — 2](lab_22/img_20.png "Test Result — 2")
- ![Test Result — 3](lab_22/img_19.png "Test Result — 3")
- ![Test Result — 4](lab_22/img_21.png "Test Result — 4")

---

## Lab 27

Hình minh họa:

![Lab 27 — Ảnh 1](Lab_27/img.png "Lab 27 — Ảnh 1")
![Lab 27 — Ảnh 2](Lab_27/img_1.png "Lab 27 — Ảnh 2")
![Lab 27 — Ảnh 3](Lab_27/img_2.png "Lab 27 — Ảnh 3")
![Lab 27 — Ảnh 4](Lab_27/img_3.png "Lab 27 — Ảnh 4")
![Lab 27 — Ảnh 5](Lab_27/img_4.png "Lab 27 — Ảnh 5")
![Lab 27 — Ảnh 6](Lab_27/img_5.png "Lab 27 — Ảnh 6")

---

## Lab 28

Hình minh họa:

![Lab 28 — Ảnh 1](Lab_28/img.png "Lab 28 — Ảnh 1")
![Lab 28 — Ảnh 2](Lab_28/img_1.png "Lab 28 — Ảnh 2")
![Lab 28 — Ảnh 3](Lab_28/img_2.png "Lab 28 — Ảnh 3")
![Lab 28 — Ảnh 4](Lab_28/img_3.png "Lab 28 — Ảnh 4")
![Lab 28 — Ảnh 5](Lab_28/img_4.png "Lab 28 — Ảnh 5")

### Vùng (Regions) & EC2

- EC2 tại **ap-northeast-1 (Tokyo)**  
  ![EC2 — ap-northeast-1 (Tokyo)](Lab_28/img_5.png "EC2 — ap-northeast-1 (Tokyo)")

- EC2 tại **us-east-1 (North Virginia)**  
  ![EC2 — us-east-1 (North Virginia)](Lab_28/img_6.png "EC2 — us-east-1 (North Virginia)")

### Thẻ (Tags)

Các cặp key/value mẫu được sử dụng:

| Key  | Value   |
|------|---------|
| Name | Example |
| Team | Beta    |
| Team | Alpha   |
| Team | TEST    |

Minh họa trên giao diện:

- **Name = Example**, **Team = Beta**  
  ![Tags — Beta](Lab_28/img_7.png "Tags — Name=Example; Team=Beta")

- **Name = Example**, **Team = Alpha**  
  ![Tags — Alpha](Lab_28/img_8.png "Tags — Name=Example; Team=Alpha")

![Lab 28 — Ảnh 6](Lab_28/img_9.png "Lab 28 — Ảnh 6")

- **Team = TEST**  
  ![Tags — TEST](Lab_28/img_10.png "Tags — Team=TEST")

---

### Conclusion:

In Week 5, I significantly improved my ability to use AWS security and access management tools. These skills form the foundation for implementing security solutions and cost optimization in upcoming AWS projects. The practical exercises helped me consolidate theory and enhance my ability to use AWS in real-world scenarios.

