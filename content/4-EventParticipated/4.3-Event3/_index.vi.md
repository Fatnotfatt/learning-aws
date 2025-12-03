---
title: "Event 3"
date: 2025-09-10
weight: 1
chapter: false
pre: " <b> 4.3. </b> "
---

# Bài thu hoạch "DevOps on AWS"

### Mục Đích Của Sự Kiện

- Giới thiệu văn hóa, nguyên tắc và các metrics chính của DevOps
- Trình diễn các dịch vụ AWS DevOps cho tự động hóa CI/CD pipeline
- Khám phá Infrastructure as Code (IaC) với CloudFormation và CDK
- Bao phủ các dịch vụ container và chiến lược triển khai microservices
- Cung cấp best practices về monitoring và observability
- Chia sẻ case studies DevOps thực tế và best practices

### Chi Tiết Sự Kiện

- **Ngày**: Thứ Hai, 17 tháng 11 năm 2025
- **Thời gian**: 08:30 – 17:00
- **Địa điểm**: Tòa nhà Bitexco Financial Tower, 2 Đ. Hải Triều, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh
- **Thời lượng**: Cả ngày (8.5 giờ với các giờ nghỉ)

### Chương Trình

#### Buổi Sáng (8:30 AM – 12:00 PM)

**8:30 – 9:00 | Đón tiếp & DevOps Mindset**

- Tóm tắt lại phiên AI/ML
- Văn hóa và nguyên tắc DevOps
- Lợi ích và các metrics chính (DORA, MTTR, tần suất deployment)

**9:00 – 10:30 | Dịch vụ AWS DevOps – CI/CD Pipeline**

- **Source Control**: AWS CodeCommit, Git strategies (GitFlow, Trunk-based)
- **Build & Test**: Cấu hình CodeBuild, testing pipelines
- **Deployment**: CodeDeploy với Blue/Green, Canary, và Rolling updates
- **Orchestration**: Tự động hóa CodePipeline
- **Demo**: Hướng dẫn CI/CD pipeline đầy đủ

**10:30 – 10:45 | Nghỉ giải lao**

**10:45 – 12:00 | Infrastructure as Code (IaC)**

- **AWS CloudFormation**: Templates, stacks, và drift detection
- **AWS CDK (Cloud Development Kit)**: Constructs, reusable patterns, và language support
- **Demo**: Triển khai với CloudFormation và CDK
- **Thảo luận**: Lựa chọn giữa các công cụ IaC

#### Nghỉ Trưa (12:00 – 13:00)

#### Buổi Chiều (13:00 – 17:00)

**13:00 – 14:30 | Dịch Vụ Container trên AWS**

- **Docker Fundamentals**: Microservices và containerization
- **Amazon ECR**: Lưu trữ image, scanning, lifecycle policies
- **Amazon ECS & EKS**: Chiến lược deployment, scaling, và orchestration
- **AWS App Runner**: Triển khai container đơn giản
- **Demo & Case Study**: So sánh triển khai microservices

**14:30 – 14:45 | Nghỉ giải lao**

**14:45 – 16:00 | Monitoring & Observability**

- **CloudWatch**: Metrics, logs, alarms, và dashboards
- **AWS X-Ray**: Distributed tracing và performance insights
- **Demo**: Thiết lập full-stack observability
- **Best Practices**: Alerting, dashboards, và quy trình on-call

**16:00 – 16:45 | DevOps Best Practices & Case Studies**

- Chiến lược deployment: Feature flags, A/B testing
- Automated testing và tích hợp CI/CD
- Quản lý incident và postmortems
- Case Studies: Chuyển đổi DevOps của startups và enterprise

**16:45 – 17:00 | Q&A & Tổng kết**

- Con đường nghề nghiệp DevOps
- Lộ trình chứng chỉ AWS

### Nội Dung Nổi Bật

#### Văn Hóa và Nguyên Tắc DevOps

- **DevOps Mindset**: Hợp tác giữa các team development và operations
- **Chuyển Đổi Văn Hóa**: Phá vỡ silos và thúc đẩy trách nhiệm chia sẻ
- **Metrics Chính (DORA)**: Đo lường hiệu suất DevOps
  - **Deployment Frequency**: Tần suất triển khai xảy ra
  - **Lead Time**: Thời gian từ code commit đến production
  - **MTTR (Mean Time To Recovery)**: Thời gian khôi phục sau lỗi
  - **Change Failure Rate**: Tỷ lệ phần trăm các deployment gây lỗi
- **Lợi Ích**: Giao hàng nhanh hơn, độ tin cậy cải thiện, hợp tác tốt hơn

#### Dịch Vụ AWS CI/CD Pipeline

**AWS CodeCommit:**

- Dịch vụ source control được quản lý đầy đủ
- Version control dựa trên Git
- Tích hợp với các dịch vụ AWS khác
- Git strategies: GitFlow, Trunk-based development, feature branches

**AWS CodeBuild:**

- Dịch vụ build được quản lý đầy đủ
- Môi trường build có thể mở rộng
- Hỗ trợ nhiều ngôn ngữ lập trình và công cụ build
- Build artifacts và test reports
- Tích hợp với testing frameworks

**AWS CodeDeploy:**

- Dịch vụ deployment tự động
- Chiến lược deployment:
  - **Blue/Green**: Triển khai zero-downtime với rollback tức thì
  - **Canary**: Rollout dần dần với rollback tự động khi có lỗi
  - **Rolling**: Cập nhật rolling với kích thước batch có thể cấu hình
- Triển khai ứng dụng trên EC2, Lambda, và on-premises

**AWS CodePipeline:**

- Dịch vụ continuous delivery được quản lý đầy đủ
- Trình tạo workflow trực quan
- Tích hợp với công cụ bên thứ ba
- Orchestration pipeline tự động
- Approval gates và điểm can thiệp thủ công

#### Infrastructure as Code (IaC)

**AWS CloudFormation:**

- Dịch vụ IaC khai báo
- Cú pháp template JSON/YAML
- Quản lý stack và cung cấp tài nguyên
- Drift detection và cập nhật stack
- Change sets để xem trước thay đổi
- Nested stacks cho hạ tầng modular

**AWS CDK (Cloud Development Kit):**

- IaC lập trình sử dụng ngôn ngữ lập trình quen thuộc
- Hỗ trợ TypeScript, Python, Java, C#, và Go
- Constructs cho các pattern hạ tầng có thể tái sử dụng
- Abstractions cấp cao hơn và best practices
- Tích hợp với CloudFormation
- CLI tools cho deployment và quản lý

**Lựa Chọn Giữa Các Công Cụ IaC:**

- CloudFormation: Khai báo, dựa trên template, AWS-native
- CDK: Lập trình, type-safe, thân thiện với developer
- Use cases và khi nào chọn mỗi cách tiếp cận

#### Dịch Vụ Container trên AWS

**Docker Fundamentals:**

- Lợi ích containerization và use cases
- Kiến trúc microservices với containers
- Tạo và tối ưu Docker image
- Multi-stage builds và best practices

**Amazon ECR (Elastic Container Registry):**

- Docker container registry được quản lý đầy đủ
- Lưu trữ và versioning image
- Scanning image để tìm lỗ hổng
- Lifecycle policies cho cleanup tự động
- Tích hợp với ECS và EKS

**Amazon ECS (Elastic Container Service):**

- Container orchestration được quản lý đầy đủ
- Fargate (serverless) và EC2 launch types
- Task definitions và service configurations
- Auto-scaling và load balancing
- Service discovery và networking

**Amazon EKS (Elastic Kubernetes Service):**

- Dịch vụ Kubernetes được quản lý
- Kubernetes-native orchestration
- Quản lý worker nodes
- Add-ons và tích hợp ecosystem
- Multi-tenant và namespace isolation

**AWS App Runner:**

- Triển khai container đơn giản
- Auto-scaling và load balancing tự động
- Triển khai source code hoặc container image
- Tích hợp CI/CD tích hợp sẵn
- Mô hình định giá pay-per-use

#### Monitoring & Observability

**Amazon CloudWatch:**

- **Metrics**: Metrics ứng dụng và hạ tầng
- **Logs**: Quản lý và phân tích log tập trung
- **Alarms**: Alerting và thông báo tự động
- **Dashboards**: Trực quan hóa tùy chỉnh metrics và logs
- **Insights**: Phát hiện bất thường tự động
- **Composite Alarms**: Logic cảnh báo phức tạp

**AWS X-Ray:**

- Distributed tracing cho microservices
- Trực quan hóa luồng request
- Xác định bottleneck hiệu suất
- Tạo service map
- Tích hợp với Lambda, ECS, và API Gateway
- Phân tích và lọc trace

**Best Practices:**

- Thiết lập chiến lược alerting hiệu quả
- Tạo dashboards có ý nghĩa
- Quy trình on-call và incident response
- Tổng hợp và phân tích log
- Thu thập metrics và retention policies

#### DevOps Best Practices

**Chiến Lược Deployment:**

- **Feature Flags**: Rollout tính năng dần dần
- **A/B Testing**: So sánh các phiên bản khác nhau
- **Canary Deployments**: Giảm thiểu rủi ro thông qua rollout dần dần
- **Blue/Green Deployments**: Cập nhật zero-downtime

**Automated Testing:**

- Unit, integration, và end-to-end testing
- Test automation trong CI/CD pipelines
- Quality gates và test coverage
- Performance và load testing

**Quản Lý Incident:**

- Tạo và bảo trì runbook
- Quy trình incident response
- Phân tích postmortem và học hỏi
- Quy trình cải thiện liên tục

### Những Gì Học Được

#### Chuyển Đổi Văn Hóa DevOps

- **Thay Đổi Văn Hóa Là Căn Bản**: Chỉ công cụ không tạo ra DevOps—văn hóa và hợp tác là chìa khóa
- **Đo Lường Những Gì Quan Trọng**: Sử dụng DORA metrics để theo dõi mức độ trưởng thành DevOps
- **Cải Thiện Liên Tục**: DevOps là một hành trình, không phải đích đến
- **Tự Động Hóa Trước Tiên**: Tự động hóa các tác vụ lặp đi lặp lại để tập trung vào công việc có giá trị cao

#### Best Practices CI/CD

- **Bắt Đầu Đơn Giản, Mở Rộng Dần**: Bắt đầu với pipeline cơ bản và thêm phức tạp theo thời gian
- **Git Strategy Quan Trọng**: Chọn GitFlow hoặc Trunk-based dựa trên kích thước team và nhịp độ release
- **Testing Là Quan Trọng**: Tích hợp automated testing ở mọi giai đoạn
- **Chiến Lược Deployment**: Sử dụng chiến lược deployment phù hợp dựa trên mức độ chấp nhận rủi ro
- **Infrastructure as Code**: Luôn sử dụng IaC cho hạ tầng có thể tái tạo và được version control

#### Container Orchestration

- **Chọn Thông Minh**: ECS cho đơn giản, EKS cho ecosystem Kubernetes
- **Bắt Đầu Với Serverless**: Fargate loại bỏ overhead quản lý node
- **Tối Ưu Images**: Image nhỏ hơn có nghĩa là deployment nhanh hơn và chi phí thấp hơn
- **Bảo Mật Trước Tiên**: Scan images và sử dụng IAM policies least-privilege

#### Chiến Lược Observability

- **Triển Khai Full-Stack Observability**: Metrics, logs, và traces cùng nhau
- **Monitoring Chủ Động**: Thiết lập alarms trước khi incident xảy ra
- **Dashboards Có Ý Nghĩa**: Tạo dashboards cung cấp insights có thể hành động
- **Distributed Tracing**: Cần thiết cho debug kiến trúc microservices

### Ứng Dụng Vào Công Việc

- **Triển Khai CI/CD Pipelines**: Thiết lập CodePipeline cho deployments tự động
- **Áp Dụng Infrastructure as Code**: Sử dụng CloudFormation hoặc CDK cho tất cả hạ tầng
- **Containerize Applications**: Bắt đầu containerize ứng dụng để portability tốt hơn
- **Thiết Lập Monitoring**: Triển khai CloudWatch và X-Ray cho observability
- **Thiết Lập DevOps Practices**: Tạo runbooks, quy trình incident response, và templates postmortem
- **Đo Lường DevOps Metrics**: Theo dõi DORA metrics để đo lường cải thiện

### Trải nghiệm trong event

Tham gia workshop **"DevOps on AWS"** cả ngày là một trải nghiệm học tập chuyên sâu và toàn diện bao phủ toàn bộ phạm vi DevOps từ văn hóa đến triển khai. Sự kiện cung cấp cả kiến thức lý thuyết và trình diễn thực tế, giúp em hiểu hoàn chỉnh về triển khai DevOps practices trên AWS.

#### Học các nguyên tắc cơ bản DevOps

- Phiên bắt đầu với **DevOps mindset và văn hóa**, nhấn mạnh rằng DevOps không chỉ là công cụ—đó là về hợp tác và trách nhiệm chia sẻ.
- Em học về **DORA metrics** (Deployment Frequency, Lead Time, MTTR, Change Failure Rate) và cách đo lường mức độ trưởng thành DevOps.
- Hiểu **lợi ích của DevOps** giúp em thấy bức tranh lớn hơn ngoài triển khai kỹ thuật.

#### Tìm hiểu sâu về AWS CI/CD pipeline

- **Hướng dẫn CodeCommit, CodeBuild, CodeDeploy, và CodePipeline** cho em thấy cách xây dựng CI/CD pipeline hoàn chỉnh.
- Học về các **Git strategies** khác nhau (GitFlow vs Trunk-based) giúp em hiểu khi nào sử dụng mỗi cách tiếp cận.
- **Demo chiến lược deployment** (Blue/Green, Canary, Rolling) rất mở mang tầm mắt, cho thấy cách giảm thiểu rủi ro và downtime.
- **Demo CI/CD pipeline trực tiếp** minh họa toàn bộ workflow từ code commit đến production deployment.

#### Thành thạo Infrastructure as Code

- **CloudFormation** minh họa cách quản lý hạ tầng khai báo với templates.
- **AWS CDK** cho em thấy cách viết code hạ tầng bằng ngôn ngữ lập trình quen thuộc, làm cho nó dễ bảo trì hơn.
- So sánh giữa CloudFormation và CDK giúp em hiểu khi nào sử dụng mỗi công cụ.
- Học về **drift detection** và **change sets** cho em tự tin quản lý hạ tầng an toàn.

#### Khám phá dịch vụ container

- **Docker fundamentals** làm mới hiểu biết của em về containerization và lợi ích của nó.
- **Amazon ECR** cho thấy cách quản lý container images an toàn với scanning và lifecycle policies.
- So sánh **ECS và EKS** giúp em hiểu trade-offs giữa dịch vụ được quản lý và tính linh hoạt Kubernetes.
- **AWS App Runner** giới thiệu cách triển khai container đơn giản hơn mà không cần quản lý hạ tầng.
- **Case study triển khai microservices** cung cấp insights thực tế về lựa chọn dịch vụ container phù hợp.

#### Thiết lập monitoring và observability

- **CloudWatch** bao phủ toàn diện cho em thấy cách thu thập metrics, logs, và thiết lập alarms.
- **AWS X-Ray** distributed tracing minh họa cách debug kiến trúc microservices phức tạp.
- **Demo full-stack observability** cho thấy cách kết nối tất cả các phần monitoring lại với nhau.
- Học về **best practices alerting** và **quy trình on-call** cung cấp kiến thức vận hành thực tế.

#### Best practices và case studies

- **Chiến lược deployment** như feature flags và A/B testing cho thấy kỹ thuật nâng cao cho deployments an toàn.
- **Tích hợp automated testing** minh họa cách xây dựng quality gates vào CI/CD pipelines.
- **Quản lý incident** practices và templates postmortem cung cấp cấu trúc cho xử lý các vấn đề production.
- **Case studies** từ startups và enterprises cho thấy chuyển đổi DevOps thực tế và bài học học được.

#### Hướng dẫn nghề nghiệp và chứng chỉ

- **Thảo luận con đường nghề nghiệp DevOps** giúp em hiểu các vai trò và yêu cầu kỹ năng khác nhau.
- **Lộ trình chứng chỉ AWS** cung cấp hướng dẫn rõ ràng về các chứng chỉ liên quan đến DevOps.
- Hiểu sự tiến triển nghề nghiệp cho em lộ trình phát triển chuyên nghiệp.

#### Trình diễn thực tế

- Mọi phiên đều bao gồm **demo trực tiếp** cho thấy triển khai thực tế, không chỉ slides.
- **Hướng dẫn CI/CD pipeline đầy đủ** minh họa tự động hóa end-to-end.
- **Demo CloudFormation và CDK** cho thấy cả hai cách tiếp cận quản lý hạ tầng.
- **So sánh triển khai container** giúp em hình dung các cách tiếp cận khác nhau cạnh nhau.

#### Kết nối và thảo luận

- Định dạng cả ngày cho phép **networking mở rộng** với các DevOps practitioners khác.
- **Phiên Q&A** cung cấp cơ hội nhận câu trả lời cho các câu hỏi cụ thể.
- Thảo luận **thách thức thực tế** với đồng nghiệp giúp em hiểu các pitfalls và giải pháp phổ biến.

#### Bài học rút ra

- **DevOps là chuyển đổi văn hóa** đòi hỏi sự đồng thuận từ cả team development và operations.
- **Tự động hóa là cần thiết** nhưng phải được triển khai cẩn thận để tránh tạo technical debt.
- **Infrastructure as Code** là không thể thương lượng cho DevOps practices hiện đại.
- **Monitoring và observability** là quan trọng cho duy trì hệ thống production.
- **Bắt đầu đơn giản và lặp lại** thay vì cố gắng triển khai mọi thứ cùng một lúc.
- **Đo lường mọi thứ** sử dụng DORA metrics để theo dõi cải thiện theo thời gian.

#### Một số hình ảnh khi tham gia sự kiện

![Hình ảnh sự kiện 1](image/image.png)

![Hình ảnh sự kiện 2](image/z7256923057067_de0a760b31cc381bc2bde6b52ecfdfba.jpg)

![Hình ảnh sự kiện 3](image/z7256923062008_d22e5b0919d4b0b74bb8a7c910ddfb1f.jpg)

![Hình ảnh sự kiện 4](image/z7256923066503_a86dccceffb9015ed8f00fbfd61aa7be.jpg)

![Hình ảnh sự kiện 5](image/z7256923071950_0d3632939addd9b0684f8bff2c3e1c47.jpg)

![Hình ảnh sự kiện 6](image/z7256923076166_a5096f1705aa25115465f612c36c5b25.jpg)

![Hình ảnh sự kiện 7](image/z7256923080742_7662392d86a81bd845118020bed8df64.jpg)

![Hình ảnh sự kiện 8](image/z7256923083373_d88e351802c7f974bd1663bc0e3f88d9.jpg)

![Hình ảnh sự kiện 9](image/z7256923087749_1dc51ba7fd23c4977ea952e46c0e0826.jpg)

![Hình ảnh sự kiện 10](image/z7256923091124_676ddf386e4458fdc2c559e213c7e280.jpg)

![Hình ảnh sự kiện 11](image/z7256923095334_4155afecb768541621090af29d7aaeff.jpg)

![Hình ảnh sự kiện 12](image/z7256923098889_5cc3358cfa752fbc6bf21f622592cfbd.jpg)

![Hình ảnh sự kiện 13](image/z7256923103750_e5306dcdc3aff953e98469ff743f37bb.jpg)

![Hình ảnh sự kiện 14](image/z7256923108763_89fc53e26fd456a6644d2fc5f528ff6d.jpg)

![Hình ảnh sự kiện 15](image/z7256923115675_331816511f704beafce72525bf16f555.jpg)

![Hình ảnh sự kiện 16](image/z7256923118416_0104e5c70ff91112164ee4737ab8e3b1.jpg)

![Hình ảnh sự kiện 17](image/z7256923123759_a426bc7d855e4ce66c37adc2ad9ec5d4.jpg)

![Hình ảnh sự kiện 18](image/z7256923128692_bb1338cee3ec608262dcd082edd32d42.jpg)

![Hình ảnh sự kiện 19](image/z7256923131399_361f7c6882ca796ea269540c1c95549b.jpg)

![Hình ảnh sự kiện 20](image/z7256923136517_b6732408d40d1f2ce297720b96d71128.jpg)

![Hình ảnh sự kiện 21](image/z7256923140996_2881820c88e78942ca9fb6336f1eb71a.jpg)

![Hình ảnh sự kiện 22](image/z7256923145161_ebea32e838f4b289ce75b958afdf5434.jpg)

![Hình ảnh sự kiện 23](image/z7256923149592_96bee441ee5d2911416d0274cdbfd419.jpg)

![Hình ảnh sự kiện 24](image/z7256923155593_f2eb341c4e1b6433db8789e5f33b900a.jpg)

![Hình ảnh sự kiện 25](image/z7256923156433_6024e47e9650155875b8d310d1016237.jpg)

![Hình ảnh sự kiện 26](image/z7256923161589_bcccd7a79d7370a2f690e16c0e75b457.jpg)

![Hình ảnh sự kiện 27](image/z7256923166551_c9010731bd7fcb5642fe4e6df7f18e74.jpg)

![Hình ảnh sự kiện 28](image/z7256923169863_46bbb82f8ece8e93fb18608d7d2eeffe.jpg)

![Hình ảnh sự kiện 29](image/z7256923175258_4732f2b81870d939f4b832213c7aa6ba.jpg)

![Hình ảnh sự kiện 30](image/z7256923179628_b60038f3b785e40d8d65581a075f0526.jpg)

![Hình ảnh sự kiện 31](image/z7256923183636_5b6437c3d6445e749224df8791e9d25e.jpg)

![Hình ảnh sự kiện 32](image/z7256923189037_7f9a74d2204b68744ece5b7498de077e.jpg)

![Hình ảnh sự kiện 33](image/z7256923193203_8bd3d7ecdb6a646a50be2d7f195cce4f.jpg)

![Hình ảnh sự kiện 34](image/z7256923197879_715f22b7881fc8dcf1238b414cb42533.jpg)

![Hình ảnh sự kiện 35](image/z7256923202396_28cbbd6f2c74a52a726ba697fcce27e6.jpg)

![Hình ảnh sự kiện 36](image/z7256923205208_3b37942e6ef120ddfa04965089d14151.jpg)

![Hình ảnh sự kiện 37](image/z7256923211426_22c8eb0d6095d0e8f7d6e5265083ce36.jpg)

![Hình ảnh sự kiện 38](image/z7256923214808_f76ca63284c8408902b4db9d3abf3a14.jpg)

![Hình ảnh sự kiện 39](image/z7256923219535_5c66be16b521fcfc42347670bd596684.jpg)

![Hình ảnh sự kiện 40](image/z7256923224273_9b98cd0300c9fca71b45487342316c36.jpg)

![Hình ảnh sự kiện 41](image/z7256923232409_7ad5c1150e68c2036e1c30ede50d787b.jpg)

![Hình ảnh sự kiện 42](image/z7256923232410_7033dfbb08821679dfea6bb5054bc6d0.jpg)

![Hình ảnh sự kiện 43](image/z7256923236259_d6cf8f95ce1bb30175f4d970cd6e08b3.jpg)

![Hình ảnh sự kiện 44](image/z7256923240481_d66d7bbe4958ae70ae82a7e777bffeed.jpg)

![Hình ảnh sự kiện 45](image/z7256923245350_56c885c0f625df2e64f0b83ba8ef1b23.jpg)

![Hình ảnh sự kiện 46](image/z7256923250091_38505c6c05c7c3036c345c5d9e34b3b5.jpg)

![Hình ảnh sự kiện 47](image/z7256923254554_e776d2fffbe76ca47770e2e7ee26a120.jpg)

![Hình ảnh sự kiện 48](image/z7256923259216_6ef6a760ea2c56aecbe5aa52aafcbbf3.jpg)

![Hình ảnh sự kiện 49](image/z7256923263478_63c42784f2113aebe0e7c7bb4c2a6810.jpg)

![Hình ảnh sự kiện 50](image/z7256923266278_21ec2e32c5996ef8cf2eafa43f6fb7d1.jpg)

![Hình ảnh sự kiện 51](image/z7256923281028_2083adf56d02c54a9291d8eecc069f0e.jpg)

![Hình ảnh sự kiện 52](image/z7256923369016_82088dc14651b01d70b82beabf5a4c81.jpg)

![Hình ảnh sự kiện 53](image/z7256923373843_e39cfa4a5ec112cdd2974d26c119569e.jpg)

![Hình ảnh sự kiện 54](image/z7256923377405_cc7b8b4d5d2a1d4165391e3acc6a1656.jpg)

![Hình ảnh sự kiện 55](image/z7256923379905_4b7aaec6954e8f3eb7f3690313b966a1.jpg)

![Hình ảnh sự kiện 56](image/z7256923384569_cc8b6660aa329ed409042dbb2f47e629.jpg)

![Hình ảnh sự kiện 57](image/z7256923389561_4e15bd74626d339661400933b58acd88.jpg)

![Hình ảnh sự kiện 58](image/z7256923394717_1e1773d8a5f46659ed975715a2c79c74.jpg)

![Hình ảnh sự kiện 59](image/z7256923399109_60090bf97b373c64e9a4edfec865fd39.jpg)

![Hình ảnh sự kiện 60](image/z7256923403819_5c199e9c210d883e0f93dbf3320ab6db.jpg)

![Hình ảnh sự kiện 61](image/z7256923407903_055083550bb97db790ae9646490da85b.jpg)

![Hình ảnh sự kiện 62](image/z7256923414487_c27c260887d659d0e678fe4f53d1e70a.jpg)

![Hình ảnh sự kiện 63](image/z7256923416568_5ff9539849b0e15b6da0b9d1b4ab6a43.jpg)

![Hình ảnh sự kiện 64](image/z7256923420886_156555db8a90eccea37eb6fd84822e06.jpg)

![Hình ảnh sự kiện 65](image/z7256923423501_7eb661393ff58fd362328f4669b77553.jpg)

![Hình ảnh sự kiện 66](image/z7256923430428_b2f646ea9e1688df36c379ab090ed0b7.jpg)

![Hình ảnh sự kiện 67](image/z7256923434046_7a3c2c2aa57b23266cc22ca430883cf4.jpg)

![Hình ảnh sự kiện 68](image/z7256923439055_19f48568618d6e3c62627993192868ec.jpg)

![Hình ảnh sự kiện 69](image/z7256923442383_5d5e5758b9f40005f328ba31b97c4c9c.jpg)

![Hình ảnh sự kiện 70](image/z7256923446412_703dfef2ad7882ee9653917c1be33db6.jpg)

![Hình ảnh sự kiện 71](image/z7256923455138_1c22dc76b58411d573ae86a050b7bc5b.jpg)

![Hình ảnh sự kiện 72](image/z7256923456168_0772b0963564d0cb4ebb15e487ab9cb3.jpg)

![Hình ảnh sự kiện 73](image/z7256923460441_2c79fcdedf1d03cba5c83466c4978342.jpg)

![Hình ảnh sự kiện 74](image/z7256923465798_10f0ba5821132faa9adeb604528d8a67.jpg)

![Hình ảnh sự kiện 75](image/z7256923469475_319756712ed72121dca333e5de3b4e24.jpg)

![Hình ảnh sự kiện 76](image/z7256923473553_fa2612fde8ed52a537f981b913b7ab96.jpg)

![Hình ảnh sự kiện 77](image/z7256923477860_9cbaf2e96ccce74c2af81d3595199588.jpg)

![Hình ảnh sự kiện 78](image/z7256923482823_57a2e31cb2ad1ea3b1374f9e676cd86f.jpg)

![Hình ảnh sự kiện 79](image/z7256923488192_c3f885d67a8b86ee7113ce61c28fc590.jpg)

![Hình ảnh sự kiện 80](image/z7256923491200_64d84af6dea8d8540b15e54d2bf6d54a.jpg)

![Hình ảnh sự kiện 81](image/z7256923495149_2cb37f62d502cbeb263710f920321206.jpg)

![Hình ảnh sự kiện 82](image/z7256923497668_cbad316a61763b53c00b0adf5542317e.jpg)

![Hình ảnh sự kiện 83](image/z7256923503853_dbfa4f564971330a65d2b87d1ec37d4e.jpg)

![Hình ảnh sự kiện 84](image/z7256923507973_43ebf56728cf0664f5ae004634e9505b.jpg)

![Hình ảnh sự kiện 85](image/z7256923513966_3780d543a8a90105314c284189c6b81d.jpg)

![Hình ảnh sự kiện 86](image/z7256923515774_ad5f196d619332b82e354b850689f402.jpg)

![Hình ảnh sự kiện 87](image/z7256923520387_10ccd0ce4ea224eb53676e93759af27e.jpg)

![Hình ảnh sự kiện 88](image/z7256923525637_a0311f27d9e1bc604f0f917930282bbd.jpg)

![Hình ảnh sự kiện 89](image/z7256923529323_5e97bc712d0d7a879bacb4db9de94963.jpg)

![Hình ảnh sự kiện 90](image/z7256923535689_2fa9b7044e36313567cc36164ba2730f.jpg)

![Hình ảnh sự kiện 91](image/z7256923539890_a0d0eedd027185dbac93b69b2e9c9a6c.jpg)

![Hình ảnh sự kiện 92](image/z7256923543659_26dd5af79ccaf0ffe8b767fbcac1ba89.jpg)

![Hình ảnh sự kiện 93](image/z7256923546531_b68d05988b8f7330fe84966ccc39cbbe.jpg)

![Hình ảnh sự kiện 94](image/z7256923551162_f61fc9dac84307e2c9cce5d1110c88ca.jpg)

![Hình ảnh sự kiện 95](image/z7256923555690_3c86e9b1d689854eb2d438197b37c679.jpg)

![Hình ảnh sự kiện 96](image/z7256923560254_76f5695ea353e2e82e9cbc1b6e55beea.jpg)

![Hình ảnh sự kiện 97](image/z7256923564023_e84ba06c8263b5eb9d4c6997761b70ae.jpg)

![Hình ảnh sự kiện 98](image/z7256923569449_30293af9fa5bbae1d42fdbe2888e8f7b.jpg)

![Hình ảnh sự kiện 99](image/z7256923572936_824c3d56044e396516160a855ec470a5.jpg)

![Hình ảnh sự kiện 100](image/z7256923581474_7d22aab32e474bb8d3a20d4ca3960f38.jpg)

![Hình ảnh sự kiện 101](image/z7256923583241_ddaabf05e26033b362996685f1409e59.jpg)

> Tổng thể, workshop cả ngày này cung cấp cho em kiến thức toàn diện về dịch vụ AWS DevOps và best practices. Sự kết hợp giữa nguyên tắc chuyển đổi văn hóa, trình diễn công cụ thực tế, và case studies thực tế cho em tự tin triển khai DevOps practices trong các dự án của em. Độ sâu và phạm vi nội dung bao phủ mọi thứ từ CI/CD pipelines đến container orchestration và observability, cung cấp nền tảng hoàn chỉnh cho xây dựng khả năng DevOps trên AWS.
