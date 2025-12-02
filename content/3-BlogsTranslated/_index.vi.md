---
title: "Các bài blogs đã dịch"
date: 2025-09-10
weight: 3
chapter: false
pre: " <b> 3. </b> "
---


Tại đây sẽ là phần liệt kê, giới thiệu các blogs mà các bạn đã dịch. Ví dụ:

### [Blog 1 - Thực nghiệm ML nhanh cho doanh nghiệp với Amazon SageMaker AI và Comet](3.1-Blog1/)

Blog này giới thiệu cách tích hợp Amazon SageMaker AI với Comet để tăng tốc thực nghiệm machine learning cho doanh nghiệp. Bạn sẽ học cách quản lý các thực nghiệm ML, theo dõi dòng kế thừa mô hình (model lineage), và đảm bảo khả năng tái tạo kết quả (reproducibility) trong môi trường sản xuất. Bài viết minh họa một workflow phát hiện gian lận (fraud detection) hoàn chỉnh sử dụng SageMaker AI + Comet, thể hiện việc theo dõi thực nghiệm, so sánh mô hình, và logging sẵn sàng audit mà các doanh nghiệp hiện đại yêu cầu. Bài viết bao gồm cả hành trình của administrator và user, từ việc thiết lập Comet Partner AI App đến chạy các thực nghiệm và so sánh kết quả trong Comet UI.

### [Blog 2 - Sử dụng workflow Apache Airflow để điều phối xử lý dữ liệu trên Amazon SageMaker Unified Studio](3.2-Blog2/)

Blog này minh họa cách sử dụng workflow Apache Airflow để điều phối các pipeline xử lý dữ liệu trên Amazon SageMaker Unified Studio. Bạn sẽ học cách xây dựng, kiểm thử và chạy các pipeline ML end-to-end sử dụng workflow của SageMaker thông qua giao diện Unified Studio. Bài viết đi qua một ví dụ thực tế bao gồm việc ingest dữ liệu thời tiết và taxi, chuyển đổi và gộp các dataset, sau đó sử dụng ML để dự đoán giá cước taxi - tất cả được điều phối thông qua workflow của SageMaker Unified Studio được hỗ trợ bởi Amazon Managed Workflows for Apache Airflow (Amazon MWAA). Bài viết tập trung vào cách tiếp cận dựa trên code sử dụng Python DAGs để quản lý workflow.

### [Blog 3 - Bắt đầu với Healthcare Data Lakes: Sử dụng Microservices](3.3-Blog3/)

Blog này giới thiệu cách bắt đầu xây dựng data lake trong lĩnh vực y tế bằng cách áp dụng kiến trúc microservices. Bạn sẽ tìm hiểu vì sao data lake quan trọng trong việc lưu trữ và phân tích dữ liệu y tế đa dạng (hồ sơ bệnh án điện tử, dữ liệu xét nghiệm, thiết bị IoT y tế…), cách microservices giúp hệ thống linh hoạt, dễ mở rộng và dễ bảo trì hơn. Bài viết giải thích cách phân tách các dịch vụ thành các microservices nhỏ hơn, kết nối lỏng lẻo thông qua mô hình pub/sub hub. Bài viết cũng hướng dẫn các quyết định kiến trúc, bao gồm việc sử dụng AWS CloudFormation cross-stack references, Amazon SNS cho messaging, và các connector chuyên biệt cho các định dạng dữ liệu y tế khác nhau như HL7v2 messages.
