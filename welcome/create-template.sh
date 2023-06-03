#!/bin/bash
echo "https://$(oc whoami):XXXXXXXX@gitlab.com" > welcome/git-credentials
echo "Please edit the welcome/git-credentials template file, replacing XXXXXXXX with your git PAT"
echo "Once you have done this please run the devfile/02-create-secret task"
echo