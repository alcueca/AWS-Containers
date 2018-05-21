#!/bin/bash

aws cloudformation update-stack --stack-name NetworkAndSecurityDocker --template-body file://NetworkAndSecurity.yaml --capabilities CAPABILITY_IAM
