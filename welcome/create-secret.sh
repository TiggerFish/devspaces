#!/bin/bash
if [ -f welcome/git-credentials ]; then
  if grep -q XXXXXXXX welcome/git-credentials; then
    echo " The git-credentials Template file in the welcome folder has not been updated with the PAT or saved since being updated"
    exit 1
  fi
  oc get secret git-credentials-secret > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "Secret exists, will replace with new values"
    oc delete secret git-credentials-secret
    echo 
  fi
  echo "Creating new secret"
  oc create secret generic git-credentials-secret --from-file=credentials=welcome/git-credentials
  echo 
  /bin/rm welcome/git-credentials
  oc label secret git-credentials-secret controller.devfile.io/git-credential='true'
  oc label secret git-credentials-secret controller.devfile.io/watch-secret='true'
  oc annotate secret git-credentials-secret controller.devfile.io/mount-path=/etc/secret
else
  echo "Template file has not been created please run task 01-create-template task before this one"
  exit 1
fi
  