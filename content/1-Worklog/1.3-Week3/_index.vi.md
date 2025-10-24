---
title: "Worklog Tuần 3"
date: 2025-09-22
weight: 1
chapter: false
pre: " <b> 1.3. </b> "
---

### Mục tiêu tuần 3:

* Hiểu rõ về Amazon EC2 và các thành phần liên quan (AMI, Backup, Key Pair, EBS, Instance Store, User Data, Metadata).
* Tìm hiểu Auto Scaling của EC2 và vai trò của nó trong việc mở rộng linh hoạt và tối ưu chi phí.
* Khám phá các dịch vụ tính toán liên quan: EFS, FSx, Lightsail, và AWS MGN.
* Củng cố kiến thức lưu trữ AWS qua các bài lab thực hành với S3, AWS Backup, và Storage Gateway.
* Phát triển kỹ năng thực tế trong việc cấu hình, quản lý và mở rộng workload trên EC2.

---

### Công việc trong tuần:

| Ngày | Nhiệm vụ                                                                                                           | Ngày bắt đầu | Ngày hoàn thành | Tài liệu tham khảo                                                                 |
| ---- | ------------------------------------------------------------------------------------------------------------------ | ------------ | ---------------- | --------------------------------------------------------------------------------- |
| 1    | - Lý thuyết: <br>&emsp; + Tổng quan EC2: AMI, Backup, Key Pair                                                     | 22/09/2025   | 22/09/2025       | [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)                          |
| 2    | - Lý thuyết: <br>&emsp; + EBS (Elastic Block Store) <br>&emsp; + Instance Store                                    | 23/09/2025   | 23/09/2025       | [AWS EBS Documentation](https://docs.aws.amazon.com/ebs/)                          |
| 3    | - Lý thuyết: <br>&emsp; + EC2 User Data <br>&emsp; + EC2 Metadata                                                  | 24/09/2025   | 24/09/2025       | [AWS EC2 User Guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/)         |
| 4    | - Lý thuyết: <br>&emsp; + EC2 Auto Scaling <br>&emsp; + Các dịch vụ liên quan: EFS, FSx, Lightsail, MGN            | 25/09/2025   | 25/09/2025       | [AWS Auto Scaling](https://docs.aws.amazon.com/autoscaling/)                       |
| 5    | - **Thực hành:** <br>&emsp; + Lab 57: Làm quen với Amazon S3                                                       | 26/09/2025   | 26/09/2025       | [AWS Study Group - Lab57](https://000057.awsstudygroup.com/)                       |
| 6    | - **Thực hành:** <br>&emsp; + Lab 13: Triển khai AWS Backup để bảo vệ workload                                     | 27/09/2025   | 27/09/2025       | [AWS Study Group - Lab13](https://000013.awsstudygroup.com/)                       |
| 7    | - **Thực hành:** <br>&emsp; + Lab 24: Sử dụng AWS Storage Gateway tích hợp với hệ thống on-premises                | 28/09/2025   | 28/09/2025       | [AWS Study Group - Lab24](https://000024.awsstudygroup.com/)                       |

---

### Kết quả đạt được Tuần 3:

* **Kiến thức lý thuyết vững chắc về Amazon EC2**, bao gồm:
  * AMI và chiến lược backup để tăng độ tin cậy.
  * Cách dùng **Key Pair** cho xác thực SSH an toàn.
  * Sự khác biệt giữa **EBS** (lưu trữ bền vững) và **Instance Store** (lưu trữ tạm thời).
  * Vai trò của **EC2 User Data** (chạy script tự động khi khởi tạo instance) và **EC2 Metadata** (cung cấp thông tin động về instance).
  * Cách **EC2 Auto Scaling** giúp duy trì hiệu năng và tối ưu chi phí.

* **Mở rộng hiểu biết về các dịch vụ liên quan**:
  * Amazon EFS và FSx cho lưu trữ chia sẻ và hiệu năng cao.
  * Amazon Lightsail như một giải pháp đơn giản cho workload nhỏ.
  * AWS MGN để di chuyển workload từ on-premises lên AWS.

* **Hoàn thành các bài lab thực hành**:
  * Tạo và quản lý bucket S3 (Lab57).
  * Triển khai AWS Backup để bảo vệ workload (Lab13).
  * Tích hợp hệ thống on-premises với AWS bằng Storage Gateway (Lab24).

* **Kỹ năng then chốt đã đạt được**:
  * Phân biệt các loại lưu trữ (EBS, Instance Store, EFS, FSx).
  * Tự động hóa vòng đời EC2 bằng User Data và Auto Scaling.
  * Kết hợp giải pháp backup và hybrid storage để xây dựng kiến trúc có độ tin cậy cao.

**Định hướng:**  
Tuần này đào sâu về **nền tảng compute và storage**. Việc kết hợp lý thuyết với bài tập thực hành giúp tăng khả năng không chỉ triển khai và quản lý EC2 mà còn thiết kế kiến trúc linh hoạt, tin cậy và tối ưu chi phí, tích hợp với các dịch vụ lưu trữ và di trú của AWS.
