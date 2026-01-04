Write-Host '🚀 Uploading NASLIF-SG project to GitHub...'
git init
git add .
git commit -m 'Initial NASLIF-SG commit'
git branch -M main
git remote add origin https://github.com/vmdhar3695/nlp-social-good-naslifsG.git
git push -u origin main
Write-Host '✅ Upload complete! Check: https://github.com/vmdhar3695/nlp-social-good-naslifsG'