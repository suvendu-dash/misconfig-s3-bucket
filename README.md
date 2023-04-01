 # misconfig-s3-bucket

 This script will check each subdomain from the final_subdomains.txt file for misconfigured S3 buckets using the aws s3 ls command, and save the results in a file named  misconfig_s3.txt.

 chmod +x misconfig_s3_buckets.sh 

 ./misconfig_s3_buckets.sh ~/yoursubdomain/path/final_subdomains.txt


 # To install AWS CLI, you can follow these steps:

 Make sure you have Python installed on your system. You can check by running python --version in your terminal.

 Install AWS CLI using pip. You can run pip install awscli in your terminal to install it.

 After installation, run aws configure to configure AWS CLI. You will need to enter your AWS access key ID, secret access key, region name, and output format.

 Once you have completed the configuration, you can start using AWS CLI commands in your terminal.

 Note: If you are using a Linux distribution, you can also install AWS CLI using your package manager. For example, on Ubuntu, you can run sudo apt-get install awscli.
