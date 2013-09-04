#!/bin/bash
git config --global alias.publish-website '!jekyll build; git add -A *; git commit -m "build dandelion website by jekyll"; git branch -D master; git checkout -b master; git filter-branch --subdirectory-filter _site/ -f; git push origin master --force; git checkout source'
