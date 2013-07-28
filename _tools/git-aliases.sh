#!/bin/bash
git config --global alias.publish-website '!git branch -D master; git checkout -b master; git filter-branch --subdirectory-filter _site/ -f; git checkout source; git push --all origin'
