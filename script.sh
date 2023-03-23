#!/bin/bash

# Retrieve the account name and new primary domain name passed as arguments
accountName="$1"
newPrimaryDomain="$2"

# Use the WHM API1 command to change the primary domain name
whmApiCommand="/sbin/whmapi1 modifyacct user=${accountName} newuser=${newPrimaryDomain}"
result=$(eval "${whmApiCommand}")

# Check if the command succeeded or failed
if [[ "${result}" == *"result: 1"* ]]; then
    echo "Success: The username was changed."
else
    echo "Error: The username could not be changed for account ${accountName}."
fi

