#!/bin/bash

set -x
ADMIN_TOKEN=$1
JENKINS_URL=$2

if [[ -z "${ADMIN_TOKEN}" ]]; then
    echo "[ERROR]: Please pass an admin API Token as parameter"
else
    curl -s -XPOST "$JENKINS_URL/createItem?name=Milestone_4" --data-binary @milestone-4.xml -H "Content-Type:text/xml" --user  Adm1n:$ADMIN_TOKEN
    curl -s -XPOST "$JENKINS_URL/createItem?name=Milestone_5" --data-binary @milestone-5.xml -H "Content-Type:text/xml" --user  Adm1n:$ADMIN_TOKEN
fi
set +x