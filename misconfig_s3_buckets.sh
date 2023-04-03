#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0"
    exit 1
fi

# Check each subdomain for misconfigured S3 buckets using s3-bucket-enum and the AWS CLI
echo "[*] Checking each subdomain for misconfigured S3 buckets..."
while read subdomain; do
    echo "[*] Checking $subdomain..."
    aws s3 ls "s3://$subdomain" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "[+] $subdomain has a misconfigured S3 bucket!"
        echo "$subdomain" >> misconfig_s3.txt
    fi
done < $1

echo "[*] Done!"
