#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
--stack-name NetworkAndSecurityStack \
--template-body file://NetworkAndSecurity.yaml \
--region eu-west-1 \
--profile alberto \
--capabilities CAPABILITY_IAM

waitForStatus.py -s NetworkAndSecurityStack -r CREATE_COMPLETE
beep
