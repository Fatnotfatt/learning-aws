---
title: "Triển Khai Frontend"
date: 2025-09-09
weight: 4
chapter: false
pre: " <b> 5.4. </b> "
---

#### Tổng Quan

Trong phần này, bạn sẽ build và triển khai **ứng dụng React frontend** lên S3 và CloudFront. Frontend sẽ được phục vụ qua CloudFront CDN để phân phối nội dung toàn cầu và độ trễ thấp.

Quá trình triển khai bao gồm:

- Build ứng dụng React với Vite
- Upload các file tĩnh lên S3
- Invalidate CloudFront cache
- Xác minh frontend có thể truy cập được

![Interface endpoint architecture](img.png)

#### Nội Dung

- [Chuẩn Bị Môi Trường Frontend](5.4.1-Prepare/)
- [Build Ứng Dụng Frontend](5.4.2-Build/)
- [Triển Khai lên S3 và CloudFront](5.4.3-Deploy/)
- [Xác Minh Triển Khai Full Stack](5.4.4-Verify/)

