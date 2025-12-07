---
title: "Frontend Deployment"
date: 2025-09-09
weight: 4
chapter: false
pre: " <b> 5.4. </b> "
---

#### Overview

In this section, you will build and deploy the **React frontend application** to S3 and CloudFront. The frontend will be served via CloudFront CDN for global content delivery and low latency.

The deployment process includes:

- Building the React application with Vite
- Uploading static files to S3
- Invalidating CloudFront cache
- Verifying the frontend is accessible

![Interface endpoint architecture](/images/5-Workshop/5.4-S3-onprem/diagram3.png)

#### Content

- [Prepare Frontend Environment](5.4.1-Prepare/)
- [Build Frontend Application](5.4.2-Build/)
- [Deploy to S3 and CloudFront](5.4.3-Deploy/)
- [Verify Full Stack Deployment](5.4.4-Verify/)

