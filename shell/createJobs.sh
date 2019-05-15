#!/bin/bash

ADMIN_TOKEN=$1

if [[ -z "${ADMIN_TOKEN}" ]]; then
    echo "[ERROR]: Please add an admin API Token"
    echo "[INFO]: Check https://stackoverflow.com/a/45466184 to understand how to create one"
else
    curl -s -XPOST 'http://localhost:8080/createItem?name=Milestone5' --data-binary @milestone-5.xml -H "Content-Type:text/xml" --user admin:$ADMIN_TOKEN
    #curl -s -XPOST 'http://localhost:8080/createItem?name=Milestone6' --data-binary @milestone-6.xml -H "Content-Type:text/xml" --user admin:$ADMIN_TOKEN
fi