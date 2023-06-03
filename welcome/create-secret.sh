#!/bin/bash
if [ -f welcome/git-credentials ]; then
  if grep -q XXXXXXXX welcome/git-credentials; then
    echo " The git-credentials Template file in the welcome folder has not been updated with the PAT or saved since being updated"
    exit 1
  fi
  oc get secret git-credentials-secret
  if [ $? -eq 0 ]; then
    echo "Secret exists, will replace with new values"
  else
     echo "Creating secret"
  fi
else
  echo "Template file has not been created please run task 01-create-template task before this one"
  exit 1
fi
  