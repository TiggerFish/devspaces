#!/bin/bash
if [ -f welcome/git-credentials ]; then
  if grep XXXXXX welcome/git-credentials; then
    echo " welcome/git-credentials file has not been updated with the PAT or saved since the update"
    exit 1
  fi
  echo " doing stuff"
else
  echo "Template file has not been created please run 01-create-template task before this one"
  exit 1
fi
  