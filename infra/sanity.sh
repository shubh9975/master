#!/bin/bash
EC2_CHECK="$(aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --output=text |grep instance|awk '{print $3}')"
if [ $? -ne 0 ];
then
	echo "faild"
else
	echo "pass"
fi

