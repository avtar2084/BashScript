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

case $2 in
	ec2)
		aws ec2 describe-instances --region $1
		;;
	rds)
		aws rds describe-db-instances --region $1
		;;
	s3)
		aws s3api list-buckets --region $1
		;;
	cloudfront)
		aws cloudfront list-distributions --region $1
		;;
	vpc)
		aws ec2 describe-vpcs --region $1
		;;
	iam)
		aws iam list-users --region $1
		;;
	route53)
		aws route53 list-hosted-zones --region $1
		;;
	cloudwatch)
		aws cloudwatch list-metrics --region $1
		;;
	cloudformation)
		aws cloudformation list-stacks --region $1
		;;
	lambda)
		aws lambda list-functions --region $1
		;;
	sns)
		aws sns list-topics --region $1
		;;
	sqs)
		aws sqs list-queues --region $1
		;;
	dynamodb)
		aws dynamodb list-tables --region $1
		;;
	vpc)
		aws ec2 describe-vpcs --region $1
		;;
	ebs)
		aws ec2 describe-volumes --region $1
		;;
	*)
		echo "The service is not supported by this script"
		;;
esac

