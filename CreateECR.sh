#!/bin/bash

aws cloudformation create-stack --profile alberto --stack-name ECRDocker \
        --template-body file://ECR.yaml \
        --region eu-west-1
