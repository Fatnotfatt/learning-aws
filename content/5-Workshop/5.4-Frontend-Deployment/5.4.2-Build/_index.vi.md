---
title: "Build Ứng Dụng Frontend"
date: 2025-09-09
weight: 2
chapter: false
pre: " <b> 5.4.2 </b> "
---

#### Build Ứng Dụng React

Trong phần này, bạn sẽ build ứng dụng React frontend sử dụng Vite.

1. Di chuyển vào thư mục frontend:

```bash
cd FE
```

2. Cài đặt dependencies (nếu chưa cài):

```bash
npm install
```

3. Xác minh file `.env` tồn tại và chứa API URL đúng:

```bash
# Windows
type .env

# Linux/Mac
cat .env
```

4. Build ứng dụng cho production:

```bash
npm run build
```

**Kết Quả Mong Đợi:** Thư mục `dist` nên được tạo với các file sẵn sàng cho production:

- `index.html`
- Thư mục `assets/` với các file JavaScript và CSS

5. Xác minh build output:

```bash
# Windows
dir dist

# Linux/Mac
ls -lh dist/
```

**Lưu ý:** Quá trình build sẽ sử dụng `VITE_API_URL` từ file `.env` và nhúng nó vào JavaScript bundle.

![name](/images/5-Workshop/5.4-S3-onprem/s3-interface-endpoint1.png)

#### Xử Lý Sự Cố Build

Nếu gặp lỗi build:

- **Lỗi: VITE_API_URL is not defined**: Đảm bảo file `.env` tồn tại và chứa `VITE_API_URL`
- **Lỗi: Module not found**: Chạy `npm install` để cài đặt dependencies
- **Lỗi: Port already in use**: Dừng development server đang chạy

![success](/images/5-Workshop/5.4-S3-onprem/s3-interface-endpoint-success.png)

