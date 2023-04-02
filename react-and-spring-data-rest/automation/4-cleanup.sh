#!/bin/bash

resourceGroup="${1}"

if [ -z "${resourceGroup}" ]; then
    echo -e '\033[31m Please specify resource group name in cli argument'
    exit 
fi

echo "resourceGroup=${resourceGroup}"

az group delete --name ${resourceGroup} 
