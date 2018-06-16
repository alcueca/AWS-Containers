#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
--stack-name ContainersBaseStack \
--template-body file://ContainersBase.yaml \
--region eu-west-1 \
--profile alberto \
--capabilities CAPABILITY_IAM

waitForStatus.py -s ContainersBaseStack -r CREATE_COMPLETE
beep
