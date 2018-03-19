#!/bin/bash
set -e -E -u -C -o pipefail

echo -e "\033[0;32mInitializing deployment directory for GitHub Pages...\033[0m"

if [ ! -d "public" ]; then
    git clone https://github.com/escalate/escalate.github.io.git public
fi
