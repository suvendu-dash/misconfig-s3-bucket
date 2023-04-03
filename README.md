 # Check misconfig-s3-buckets

**What are misconfigured S3 buckets?**

A misconfigured S3 bucket is a cloud storage bucket provided by Amazon Web Services (AWS) that has been set up incorrectly and is publicly accessible. These misconfigured buckets can expose sensitive data and allow unauthorized access, which can lead to data breaches and other security risks. It's important for organizations to properly configure their S3 buckets and regularly check for any misconfigurations to prevent these types of incidents.

 **Check each subdomain for misconfigured S3 buckets using s3-bucket-enum and the AWS CLI**

 This script will check each subdomain from the final_subdomains.txt file for misconfigured S3 buckets using the `aws s3 ls` command, and save the results in a file named  `misconfig_s3.txt`.
 
Use Active & Passive Subdomain Enumeration methods to gather a list of subdomains. Sort the results and use httpx to filter out the live subdomains. Save the list of live subdomains as final_subdomains.txt.

You will need to make the script executable by running the command `chmod +x misconfig_s3_buckets.sh`.

To run the script, you can use the following command:

`./misconfig_s3_buckets.sh final_subdomains.txt`
 
 If the script does not detect any misconfigured S3 buckets, then the output file `misconfig_s3.txt` will not be created.

![misconfig_s3_buckets](https://user-images.githubusercontent.com/69983207/229280152-34565244-8d5d-460a-b48d-7ee0675f612a.png)


 **To install AWS CLI, you can follow these steps:**

 Make sure you have Python installed on your system. You can check by running `python --version` in your terminal.

 Install AWS CLI using pip. You can run `pip install awscli` in your terminal to install it.

 After installation, run aws configure to configure AWS CLI. You will need to enter your AWS access key ID, secret access key, region name, and output format.

 Once you have completed the configuration, you can start using AWS CLI commands in your terminal.

 Note: If you are using a Linux distribution, you can also install AWS CLI using your package manager. For example, on Ubuntu, you can run `sudo apt-get install awscli`.
