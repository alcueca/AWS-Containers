#!/bin/bash

aws cloudformation create-stack --profile alberto --stack-name DockerServerDocker \
        --template-body file://DockerServer.yaml \
        --region eu-west-1 \
        --parameters \
            ParameterKey=KeyNameParam,ParameterValue=StudentKeyPair \
            ParameterKey=InstanceTypeParam,ParameterValue=t2.micro \
        --disable-rollback

