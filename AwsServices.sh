#!/Bin/Bash

#Author : Avtar Singh
#Version : 1.0

#This script is used to check the services present in AWS
#Usage: Bash awsservices.sh <region> <service>

#The Aws sevices supported by this script
#1.EC2
# 2. RDS
# 3. S3
# 4. CloudFront
# 5. VPC
# 6. IAM
# 7. Route53
# 8. CloudWatch
# 9. CloudFormation
# 10. Lambda
# 11. SNS
# 12. SQS
# 13. DynamoDB
# 14. VPC
# 15. EBS


# Check if the number of aruguments passed are correct
if [[ ${#} -ne 2 ]]
then
	echo "Please enter the correct arguments"
	echo "Usage: Bash awsservices.sh <region> <service>"
	exit 1
fi

aws --version &> /dev/null

# Check if Aws CLI is installed in the system
if [[ $? -ne 0 ]]
then
	echo "Aws CLI is not installed. Please try again after instalation"
	exit 1
fi

# Check if the AWS CLI is configured
if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not configured. Please configure the AWS CLI and try again."
    exit 1
fi