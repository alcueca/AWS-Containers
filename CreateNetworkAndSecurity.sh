#!/bin/bash

aws cloudformation create-stack --stack-name NetworkAndSecurityDocker --template-body file://NetworkAndSecurity.yaml --region eu-west-1 --profile alberto
