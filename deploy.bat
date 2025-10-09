@echo off
echo ===========================================
echo 🚀 Deploying Hugo site to GitHub Pages...
echo ===========================================

:: Bước 1 - Build lại site
cd /d "D:\Project code\OJT\learning-aws"
hugo -D
if errorlevel 1 (
    echo ❌ Hugo build failed!
    pause
    exit /b
)

:: Bước 2 - Push thư mục public lên gh-pages
cd public
git add .
git commit -m "rebuild site"
git push origin gh-pages --force

:: Bước 3 - Hoàn tất
echo ✅ Done! Site deployed to GitHub Pages.
pause
