#!/bin/bash
set -e -E -u -C -o pipefail

echo -e "\033[0;32mBuild and deploy website...\033[0m"

# Build website
hugo

# Switch to public folder
cd public

# Add changes to git
git add .

# Commit changes
msg="feat: update website"
if [ $# -eq 1 ]; then
    msg="$1"
fi
git commit -m "$msg"

# Push source and build repos
git push origin master

# Come back up to project root
cd ..
