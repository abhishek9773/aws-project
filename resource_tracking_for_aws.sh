#!/bin/bash

############################################
# Author: anand9773 (github)
# Data: 27-12-2023
#
# Version: 1.0.0
# 
# Script will report the AWS resourrce usage.
#############################################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list the s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list the EC2 instances
echo "Print list of ec2 buckets"
# aws  ec2 describe-instances  

aws ec2 describe-instances | jq  '.Reservations[].Instances[].InstanceId' > awsTracker # simplication version


# list lambda
echo "Print list of lambda functions"
aws lambda list-functions  >>  awsTracker

# list IAM users
echo "print list of iam users"
aws iam list-users >> awsTracker



# EXTRA INFO :-
# i you face any difficulity for read losts  of data feel free to costumised 
# using jq and yq which json persor, and yaml parsor  in linux  use command 
# 'sudo apt install jq ' # to install jq in your terminal