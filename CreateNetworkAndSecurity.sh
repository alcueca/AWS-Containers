#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
--stack-name NetworkAndSecurityDocker \
--template-body file://NetworkAndSecurity.yaml \
--region eu-west-1 \
--profile alberto \
--capabilities CAPABILITY_IAM

waitForStatus.py -s NetworkAndSecurityDocker -r CREATE_COMPLETE
beep
