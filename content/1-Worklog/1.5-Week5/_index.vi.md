---
title: "Worklog Tuần 5"
date: 2025-10-04
weight: 1
chapter: false
pre: " <b> 1.5. </b> "
---

### Mục tiêu tuần 5:

Trong tuần này, mục tiêu chính của tôi là nắm vững các khái niệm và dịch vụ bảo mật trong AWS, bao gồm các mô hình chia sẻ trách nhiệm, quản lý truy cập, mã hóa và bảo mật tài nguyên. Tôi cũng đã làm quen với các công cụ và dịch vụ của AWS, từ đó có thể áp dụng vào các bài thực hành cụ thể.

Các mục tiêu cụ thể bao gồm:
* Hiểu mô hình **Share Responsibility** của AWS.
* Nắm vững các dịch vụ bảo mật chủ chốt của AWS: **IAM**, **Cognito**, **Security Hub**, **KMS**, **Identity Center**.
* Cải thiện kỹ năng quản lý tài nguyên và bảo mật qua **IAM Permissions Boundary**, **Resource Tags**, và các kỹ thuật mã hóa.

### Các công việc cần triển khai trong tuần này:

| Thứ | Công việc                                                                                                                                                                                                                                                                 | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu                                         |
| --- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------ | --------------- | ------------------------------------------------------ |
| 2   | - Tìm hiểu lý thuyết về **Share Responsibility Model** và các nguyên lý bảo mật của AWS. <br> - Đọc tài liệu về các dịch vụ bảo mật của AWS: <br>&emsp;+ **Amazon IAM** <br>&emsp;+ **Amazon Cognito** <br>&emsp;+ **AWS Identity Center** <br>&emsp;+ **AWS KMS** <br>&emsp;+ **AWS Security Hub**  | 04/10/2025   | 04/10/2025      | [AWS Study Group](https://000013.awsstudygroup.com/)     |
| 3   | - **Thực hành:** <br>&emsp;+ Cấu hình và sử dụng **AWS Security Hub** để theo dõi và phát hiện các vấn đề bảo mật. <br>&emsp;+ Tạo và quản lý **IAM Users**, **Roles** và **Policies** cho các tài khoản trong AWS. <br>&emsp;+ Tạo **IAM Groups** và quản lý quyền truy cập cho các nhóm người dùng. | 05/10/2025   | 05/10/2025      | [AWS Study Group](https://000022.awsstudygroup.com/)     |
| 4   | - **Thực hành:** <br>&emsp;+ Tối ưu hóa chi phí **EC2** với **Lambda** để tự động hóa các thao tác dừng hoặc khởi động EC2 instances. <br>&emsp;+ Quản lý quyền truy cập EC2 qua **Resource Tags** thông qua **IAM**. <br>&emsp;+ Cấu hình **IAM Permission Boundaries** để giới hạn quyền người dùng. <br>&emsp;+ Mã hóa dữ liệu sử dụng **AWS KMS**. | 06/10/2025   | 06/10/2025      | [AWS Study Group](https://000027.awsstudygroup.com/)     |
| 5   | - **Thực hành nâng cao:** <br>&emsp;+ Tìm hiểu và áp dụng các phương pháp bảo mật trong **AWS Organizations** để quản lý nhiều tài khoản AWS. <br>&emsp;+ Nâng cao khả năng sử dụng **AWS Identity Center** để quản lý và đồng bộ người dùng và nhóm trên nhiều dịch vụ AWS.                                                   | 07/10/2025   | 07/10/2025      | [AWS Study Group](https://000030.awsstudygroup.com/)     |

### Kết quả đạt được tuần 5:

Tuần này, tôi đã đạt được những kết quả quan trọng trong việc nắm bắt các dịch vụ bảo mật của AWS và áp dụng lý thuyết vào thực tế. Cụ thể:

1. **Hiểu và áp dụng mô hình Share Responsibility của AWS**:
    - Tôi đã nắm rõ mô hình này, trong đó AWS chịu trách nhiệm bảo mật hạ tầng và nền tảng, còn người dùng chịu trách nhiệm bảo mật dữ liệu và ứng dụng của mình. Điều này giúp tôi hiểu rõ vai trò của mình khi triển khai các dịch vụ trên AWS.

2. **Lý thuyết về các dịch vụ bảo mật chủ chốt của AWS**:
    - **Amazon IAM**: Học cách tạo và quản lý **IAM Users**, **Roles**, và **Policies**, giúp tôi kiểm soát quyền truy cập cho người dùng và nhóm.
    - **Amazon Cognito**: Tìm hiểu cách quản lý người dùng và xác thực trong các ứng dụng của AWS.
    - **AWS Identity Center**: Khám phá cách kết nối người dùng với các dịch vụ AWS qua Identity Center.
    - **AWS Security Hub**: Cấu hình và sử dụng để giám sát bảo mật và phát hiện các mối đe dọa.
    - **AWS KMS**: Thực hành mã hóa dữ liệu khi lưu trữ (at rest) và bảo vệ dữ liệu quan trọng với các khóa mã hóa.

3. **Thực hành và áp dụng các dịch vụ AWS bảo mật**:
    - Đã hoàn thành việc cài đặt và cấu hình **AWS Security Hub** để giám sát các vấn đề bảo mật, giúp phát hiện sớm các lỗ hổng bảo mật.
    - **IAM Permissions Boundary**: Cấu hình để hạn chế quyền của người dùng, đảm bảo quyền truy cập chỉ được cấp trong phạm vi cần thiết.
    - **Optimizing EC2 Costs with Lambda**: Tối ưu hóa chi phí EC2 bằng cách sử dụng Lambda để tự động tắt các instances không sử dụng, giảm chi phí cho tổ chức.
    - **Quản lý quyền truy cập EC2 với IAM và Resource Tags**: Thiết lập các IAM Policies để kiểm soát quyền truy cập vào các tài nguyên EC2 thông qua việc gắn **Tags**.

4. **Nâng cao kỹ năng quản lý tài nguyên AWS**:
    - Tạo và quản lý **IAM Groups**, **Policies**, giúp tôi quản lý quyền truy cập của các nhóm người dùng một cách hiệu quả.
    - Học cách sử dụng **AWS Organizations** để quản lý nhiều tài khoản và đảm bảo rằng các chính sách bảo mật được áp dụng một cách nhất quán trong toàn bộ tổ chức.

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


## Lab 30
- Policies :

![img.png](Lab_30/img.png)
![img_1.png](Lab_30/img_1.png)

- IAM :

![img_2.png](Lab_30/img_2.png)
![img_3.png](Lab_30/img_3.png)

- Check Permission :

![img_4.png](Lab_30/img_4.png)
![img_5.png](Lab_30/img_5.png)

## Lab 33

- Policies

![img.png](Lab_33/img.png)
- Role

![img_1.png](Lab_33/img_1.png)
- User

![img_2.png](Lab_33/img_2.png)

- KMS

![img_3.png](Lab_33/img_3.png)

- S3

![img_4.png](Lab_33/img_4.png)
![img_5.png](Lab_33/img_5.png)
![img_6.png](Lab_33/img_6.png)

- CloudTrail

![img_7.png](Lab_33/img_7.png)
![img_8.png](Lab_33/img_8.png)

- Athena

![img_9.png](Lab_33/img_9.png)

- TEST sau khi make ACLs
![img_10.png](Lab_33/img_10.png)
![img_11.png](Lab_33/img_11.png)
![img_12.png](Lab_33/img_12.png)
![img_13.png](Lab_33/img_13.png)




---

### Kết luận:
Trong tuần 5, tôi đã nâng cao khả năng sử dụng các công cụ bảo mật và quản lý truy cập của AWS. Những kiến thức và kỹ năng này là cơ sở quan trọng để tiếp tục triển khai các giải pháp bảo mật và tối ưu hóa chi phí trong các dự án AWS sắp tới. Các bài thực hành giúp tôi củng cố lý thuyết và nâng cao khả năng sử dụng AWS trong môi trường thực tế.
