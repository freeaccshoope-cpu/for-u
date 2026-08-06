# Run this script from PowerShell on your Desktop to publish index.html to GitHub
Set-Location "C:\Users\Rosalie\Desktop"

Write-Host "Adding index.html to git..."
git add "index.html"

Write-Host "Committing changes..."
git commit -m "Publish index.html"

Write-Host "Fetching remote updates..."
git fetch origin

Write-Host "Setting upstream for main branch..."
git branch --set-upstream-to=origin/main main

Write-Host "Pulling remote changes with rebase..."
git pull --rebase origin main

Write-Host "Pushing to GitHub..."
git push origin main

Write-Host "Done. If the push succeeds, your file will be on GitHub."