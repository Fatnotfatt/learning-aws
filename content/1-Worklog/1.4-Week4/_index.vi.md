---
title: "Worklog Tuần 4"
date: 2025-09-29
weight: 1
chapter: false
pre: " <b> 1.4. </b> "
---

### Mục tiêu tuần 4:

- Hiểu sâu về dịch vụ lưu trữ cốt lõi của AWS là **Amazon S3**.
- Nắm vững các khái niệm: bucket, object, storage class, access point, static website hosting, và CORS.
- Tìm hiểu các giải pháp lưu trữ lai (hybrid storage) và di chuyển dữ liệu như **Storage Gateway** và **Snow Family**.
- Làm quen với **FSx for Windows File Server** và dịch vụ sao lưu tự động **AWS Backup**.
- Thực hành triển khai, quản lý và kết nối các dịch vụ lưu trữ AWS trong môi trường thực tế.

---

### Công việc cần thực hiện trong tuần:

| Ngày | Công việc                                                                                                                                                                                                         | Ngày bắt đầu | Ngày hoàn thành | Tài liệu tham khảo                                                                     |
| ---- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ | --------------- | -------------------------------------------------------------------------------------- |
| 2    | - Nghiên cứu lý thuyết **Dịch vụ Lưu trữ trên AWS (S3)** – _Module 04-01_. <br> - Làm quen với khái niệm Bucket, Object và cơ chế lưu trữ.                                                                        | 29/09/2025   | 29/09/2025      | https://docs.aws.amazon.com/s3/                                                        |
| 3    | - Học về **Access Point** và **Storage Class** trong S3 – _Module 04-02_. <br> - Phân biệt các loại storage class: Standard, IA, Glacier, Deep Archive.                                                           | 30/09/2025   | 30/09/2025      | https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html               |
| 4    | - Tìm hiểu **S3 Static Website & CORS**, quyền truy cập (Access Control), Object Key, Performance, Glacier – _Module 04-03_.                                                                                      | 01/10/2025   | 01/10/2025      | https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html              |
| 5    | - **Thực hành:** _Module 04-Lab13 – Deploy AWS Backup to the System_. <br> - **Thực hành:** _Module 04-Lab14 – VM Import/Export_.                                                                                 | 02/10/2025   | 02/10/2025      | [Lab13](https://000013.awsstudygroup.com/), [Lab14](https://000014.awsstudygroup.com/) |
| 6    | - **Thực hành:** _Module 04-Lab24 – Using File Storage Gateway_. <br> - **Thực hành:** _Module 04-Lab25 – Amazon FSx for Windows File Server_. <br> - Ôn tập và tổng hợp toàn bộ nội dung về dịch vụ lưu trữ AWS. | 03/10/2025   | 03/10/2025      | [Lab24](https://000024.awsstudygroup.com/), [Lab25](https://000025.awsstudygroup.com/) |

---

### Kết quả đạt được trong Tuần 4:

- Hiểu rõ **kiến trúc và nguyên lý hoạt động của Amazon S3**, bao gồm:

  - Cách tạo và quản lý Bucket, Object, và chính sách truy cập (Access Policy).
  - Các **Storage Classes** khác nhau và chiến lược tối ưu chi phí lưu trữ.
  - Cấu hình **S3 Static Website Hosting** và xử lý CORS cho ứng dụng web.

- Làm quen với **S3 Glacier** – dịch vụ lưu trữ lạnh, tiết kiệm chi phí cho dữ liệu ít truy cập.

- Nắm vững khái niệm **Hybrid Storage & Data Migration** thông qua:

  - **AWS Snow Family** (Snowcone, Snowball, Snowmobile).
  - **AWS Storage Gateway** – giải pháp kết nối giữa hệ thống on-premises và đám mây AWS.

- Thực hành thành công các lab:

## Lab 13 :

- **AWS Backup** – cấu hình và triển khai sao lưu tài nguyên.
  > Step 1 :
  - ![img_1.png](images/img_1.png)
    > Step 2 :
  - ![img_2.png](images/img_2.png)
    > Step 3 :
  - ![img_3.png](images/img_3.png)
    > Step 4 :
  - ![img_4.png](images/img_4.png)
    > Sucess :
  - ![img_5.png](images/img_5.png)

## Lab 14 :

- **VM Import/Export** – chuyển đổi máy ảo giữa môi trường cục bộ và AWS.
  > Step 1 :
  - ![img_8.png](images/img_8.png)
    > Sucess :
  - ![img_9.png](images/img_9.png)
    > Step 2 :
  - ![img_10.png](images/img_10.png)
    > Step 3 :
  - ![img_11.png](images/img_11.png)
    > Step 4 :
  - ![img_12.png](images/img_12.png)
    > Step 5 :
  - ![img_13.png](images/img_13.png)
    > Step 6 ( thành công tải máy ảo lên EC2 (AMIs)) :
  - ![img_14.png](images/img_14.png)
    > Step 7 :
  - ![img_15.png](images/img_15.png)
    > Step 8 (Test Internet):
  - ![img_16.png](images/img_16.png)
    > Step 9 :
  - ![img_17.png](images/img_17.png)
    > Step 10 (done ):
  - ![img_18.png](images/img_18.png)
**## Lab 24 :**

- **File Storage Gateway** – tạo và liên kết lưu trữ file giữa on-premises và AWS.
  > Lưu ý : phải nâng cấp tài khoản :
    - ![img_6.png](images/img_6.png)
  > Step 1 sau khi tạo S3 thì vào tạo FSG :
    - ![img_20.png](images/img_20.png)
  > Step 2 EC2 setting :
    - ![img_21.png](images/img_21.png)
    - ![img_22.png](images/img_22.png)
  > Step 3  :
    - ![img_23.png](images/img_23.png)

## Lab 25 :

- **Amazon FSx for Windows File Server** – triển khai hệ thống lưu trữ file cho Windows.
    > Step 1 ( lỗi lamda (node js version) ):
  - ![img_19.png](images/img_19.png)
    > Step 2 :
  - ![img_23.png](images/img_23.png) 

- Hoàn thành toàn bộ **Module 04 – AWS Storage Services**, tạo nền tảng vững chắc để chuyển sang các dịch vụ tính toán, cơ sở dữ liệu và bảo mật trong các tuần tiếp theo.

---
