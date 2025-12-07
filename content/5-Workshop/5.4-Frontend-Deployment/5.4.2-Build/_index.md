---
title: "Build Frontend Application"
date: 2025-09-09
weight: 2
chapter: false
pre: " <b> 5.4.2 </b> "
---

#### Build React Application

In this section, you will build the React frontend application using Vite.

1. Navigate to the frontend directory:

```bash
cd FE
```

2. Install dependencies (if not already installed):

```bash
npm install
```

3. Verify the `.env` file exists and contains the correct API URL:

```bash
# Windows
type .env

# Linux/Mac
cat .env
```

4. Build the application for production:

```bash
npm run build
```

**Expected Result:** The `dist` directory should be created with production-ready files:

- `index.html`
- `assets/` folder with JavaScript and CSS files

5. Verify the build output:

```bash
# Windows
dir dist

# Linux/Mac
ls -lh dist/
```

**Note:** The build process will use the `VITE_API_URL` from the `.env` file and embed it into the JavaScript bundle.

![name](/images/5-Workshop/5.4-S3-onprem/s3-interface-endpoint1.png)

#### Build Troubleshooting

If you encounter build errors:

- **Error: VITE_API_URL is not defined**: Ensure the `.env` file exists and contains `VITE_API_URL`
- **Error: Module not found**: Run `npm install` to install dependencies
- **Error: Port already in use**: Stop any running development server

![success](/images/5-Workshop/5.4-S3-onprem/s3-interface-endpoint-success.png)
