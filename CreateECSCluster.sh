#!/bin/bash

aws cloudformation create-stack \
    --stack-name ECSClusterDocker \
    --template-body file://ECSCluster.yaml \
    --region eu-west-1 \
    --profile alberto \
    --capabilities CAPABILITY_IAM \
    --parameters ParameterKey=KeyNameParam,ParameterValue=StudentKeyPair
