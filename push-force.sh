#!/bin/bash
rm -rf ./.git
git init
git checkout -b 2.x
git add .
git commit -m "add readme for graphXR trail version"
git remote add github https://github.com/Kineviz/graphxr_trial.git
git push --set-upstream github 2.x --force