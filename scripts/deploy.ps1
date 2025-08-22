# deploy.ps1
param([string]$message = "Site update: $(Get-Date -Format 'yyyy-MM-dd HH:mm')")

Write-Host "Deploying 403 site..." -ForegroundColor Green

# Build with search
.\scripts\build-with-search.ps1

# Commit and push
git add .
git commit -m $message
git push origin main

Write-Host "Deployed!" -ForegroundColor Green
