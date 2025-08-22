# build-with-search.ps1
Write-Host "Building 403 site with search indexing..." -ForegroundColor Green

# Build Hugo site
hugo --minify

# Generate search index with Pagefind
npx -y pagefind --site "public"

Write-Host "Build complete!" -ForegroundColor Green
