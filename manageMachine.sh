#!/bin/bash
if [[ $# -ne 4 ]]
then
    echo "Remember you need: the AccessID, AccessKey, Id of the machine and start or stop"
    exit -1
fi

if [[ $4 -eq "start" ]]; then
    AWS_ACCESS_KEY_ID="$1" AWS_SECRET_ACCESS_KEY="$2" aws ec2 start-instances --region=eu-central-1 --instance-ids "$3"
elif [[ $4 -eq "stop" ]]; then
    AWS_ACCESS_KEY_ID="$1" AWS_SECRET_ACCESS_KEY="$2" aws ec2 stop-instances --region=eu-central-1 --instance-ids "$3" 
else
    echo "not valid 4 parameter, remember start or stop"
fi
