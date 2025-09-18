---
title: "Worklog Tuần 2"
date: 2025-09-10
weight: 1
chapter: false
pre: " <b> 1.2. </b> "
---
{{% notice warning %}}
⚠️ **Lưu ý:** Các thông tin dưới đây chỉ nhằm mục đích tham khảo, vui lòng **không sao chép nguyên văn** cho bài báo cáo của bạn kể cả warning này.
{{% /notice %}}


### Mục tiêu tuần 2:

* Học chuyên sâu hơn về AWS ( VPC (Virtual Private Cloud) , VPC - security , and multi-VPC features ).
* VPN Direct Connect ( AWS Direct Connect ) , Load Balancer ( Elastic Load Balancing ).

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc                                                                                                                                                                  | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu                            |
| --- |----------------------------------------------------------------------------------------------------------------------------------------------------------------------------| ------------ | --------------- | ----------------------------------------- |
| 2   | - Học lý thuyết <br> - thế nào là VPC cách tối ưu hóa thuê các dịch vụ cloud                                                                                               | 11/08/2025   | 11/08/2025      |
| 3   | - Thế nào là VPC <br>&emsp; + subnet , CIDR <br>&emsp; + Route table <br>&emsp; + ENI ( Elastic Network Interface )                                                        | 12/08/2025   | 12/08/2025      | <https://www.youtube.com/watch?v=O9Ac_vGHquM&list=PLahN4TLWtox2a3vElknwzU_urND8hLn1i&index=25> |
| 4   | - Cấu hình tường lửa VPC có NACL , Security Group ,                                                                                                                        | 13/08/2025   | 13/08/2025      | <https://cloudjourney.awsstudygroup.com/> |
| 5   | - Tìm hiểu EC2 cơ bản: <br>&emsp; + Instance types <br>&emsp; + AMI <br>&emsp; + EBS <br>&emsp; + ... <br> - Các cách remote SSH vào EC2 <br> - Tìm hiểu Elastic IP   <br> | 14/08/2025   | 15/08/2025      | <https://cloudjourney.awsstudygroup.com/> |
| 6   | - **Thực hành:** <br>&emsp; + Tạo EC2 instance <br>&emsp; + Kết nối SSH <br>&emsp; + Gắn EBS volume                                                                        | 15/08/2025   | 15/08/2025      | <https://cloudjourney.awsstudygroup.com/> |


### Kết quả đạt được tuần 2:

* Hiểu AWS là gì và nắm được các nhóm dịch vụ cơ bản: 
  * Compute
  * Storage
  * Networking 
  * Database
  * ...

* Đã tạo và cấu hình AWS Free Tier account thành công.

* Làm quen với AWS Management Console và biết cách tìm, truy cập, sử dụng dịch vụ từ giao diện web.

* Cài đặt và cấu hình AWS CLI trên máy tính bao gồm:
  * Access Key
  * Secret Key
  * Region mặc định
  * ...

* Sử dụng AWS CLI để thực hiện các thao tác cơ bản như:

  * Kiểm tra thông tin tài khoản & cấu hình
  * Lấy danh sách region
  * Xem dịch vụ EC2
  * Tạo và quản lý key pair
  * Kiểm tra thông tin dịch vụ đang chạy
  * ...

* Có khả năng kết nối giữa giao diện web và CLI để quản lý tài nguyên AWS song song.
* ...



