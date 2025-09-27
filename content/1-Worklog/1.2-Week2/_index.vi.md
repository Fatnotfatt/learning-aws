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

* Hiểu rõ khái niệm và cấu trúc của VPC (CIDR, Subnet, Route Table, ENI).
* Nắm được cách cấu hình tường lửa trong VPC (NACL, Security Group).
* Làm quen với các dịch vụ kết nối mạng: VPN, Direct Connect.
* Tìm hiểu và thực hành Load Balancer.
* Triển khai thực hành các thành phần cơ bản: VPC, Subnet, Route Table, IGW, EBS, Elastic IP.
* Biết cách kết nối và remote vào EC2 bằng SSH.
* Làm quen với Hybrid DNS bằng Route 53 Resolver.
* Thực hành kết nối nhiều VPC với nhau bằng VPC Peering.
* Triển khai AWS Transit Gateway để quản lý kết nối giữa nhiều VPC.

---

### Các công việc cần triển khai trong tuần này:

| Thứ | Công việc                                                                                                                                                                    | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu                                                                                                                                                                            |
| ---- |------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| ---------------- | ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 2    | - Học lý thuyết<br> - Thế nào là VPC, cách tối ưu hóa thuê các dịch vụ cloud                                                                                                 | 15/09/2025       | 15/09/2025         | [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)                                                                                                                                   |
| 3    | - Tìm hiểu về VPC<br>&emsp; + Subnet, CIDR <br>&emsp; + Route table <br>&emsp; + ENI (Elastic Network Interface)                                                            | 16/09/2025       | 16/09/2025         | [YouTube - AWS VPC](https://www.youtube.com/watch?v=O9Ac_vGHquM&list=PLahN4TLWtox2a3vElknwzU_urND8hLn1i&index=25)                                                                            |
| 4    | - Cấu hình tường lửa VPC: NACL, Security Group<br>- VPN, Direct Connect<br>- Load Balancer<br>- Extra Resources                                                             | 17/09/2025       | 17/09/2025         | [YouTube - AWS Security](https://www.youtube.com/watch?v=O9Ac_vGHquM&list=PLahN4TLWtox2a3vElknwzU_urND8hLn1i&index=25)                                                                       |
| 5    | - **Thực hành:** <br>&emsp; + VPC + Subnet<br>&emsp; + Route Table<br>&emsp; + IGW<br>&emsp; + EBS<br>&emsp; + ...<br>- Các cách remote SSH vào EC2<br>- Tìm hiểu Elastic IP | 18/09/2025       | 18/09/2025         | [AWS Study Group - 000003](https://000003.awsstudygroup.com/)                                                                                                                                |
| 6    | - **Thực hành:** <br>&emsp; + Set up Hybrid DNS với Route 53 Resolver                                                                                                       | 19/09/2025       | 19/09/2025         | [AWS Study Group - 000010](https://000010.awsstudygroup.com/)                                                                                                                                |
| 7    | - **Thực hành:** <br>&emsp; + Set up VPC Peering                                                                                                                            | 19/09/2025       | 19/09/2025         | [AWS Study Group - 000019](https://000019.awsstudygroup.com/)                                                                                                                                |
| 8    | - **Thực hành:** <br>&emsp; + Set up AWS Transit Gateway                                                                                                                     | 19/09/2025       | 19/09/2025         | [AWS Study Group - 000020](https://000020.awsstudygroup.com/)                                                                                                                                |

---

### Kết quả đạt được tuần 2:

* Hiểu rõ kiến trúc Amazon VPC, cách các thành phần như Subnet, CIDR, Route Table và ENI kết hợp với nhau để tạo nên một mạng bảo mật và có khả năng mở rộng.
* Biết cách thiết kế và áp dụng chính sách bảo mật mạng thông qua Security Group và Network ACL, nắm được tình huống thực tế khi nên dùng từng loại.
* Tìm hiểu các dịch vụ mạng của AWS như VPN và Direct Connect, từ đó nắm được giải pháp kết nối hybrid cloud trong môi trường doanh nghiệp.
* Thực hành triển khai các thành phần cốt lõi: tạo VPC, Subnet, cấu hình Route Table, Internet Gateway, gắn EBS và cấp phát Elastic IP.
* Củng cố kỹ năng thao tác với EC2 thông qua SSH, hiểu rõ hơn về key pair và quản lý truy cập an toàn.
* Thực hành các kịch bản nâng cao như Hybrid DNS với Route 53 Resolver để mở rộng khả năng phân giải tên trong môi trường hybrid.
* Thiết lập kết nối giữa các VPC thông qua VPC Peering và kiểm thử giao tiếp giữa tài nguyên thuộc các mạng khác nhau.
* Triển khai AWS Transit Gateway để tập trung và đơn giản hóa quản lý kết nối mạng nhiều VPC, củng cố kiến thức về kiến trúc mạng có khả năng mở rộng.

**Kết luận:** Sau tuần 2, tôi không chỉ nắm vững lý thuyết về VPC và các dịch vụ mạng mà còn có nhiều trải nghiệm thực hành, đủ tự tin thiết kế và quản lý hạ tầng mạng trên AWS.  
