#!/bin/bash
git config --global alias.publish-website '!git branch -D master; git checkout -b master; git filter-branch --subdirectory-filter _site/ -f; git checkout source; git push --all origin'
git config --global alias.hide-site 'update-index --assume-unchanged _site'
git config --global alias.show-site 'update-index --no-assume-unchanged _site'
