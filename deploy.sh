#!/bin/bash
set -e -E -u -C -o pipefail

echo -e "\033[0;32mDeploying website to GitHub Pages...\033[0m"

# Build the project.
hugo

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
msg="feat: update static website"
if [ $# -eq 1 ]; then
    msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..
