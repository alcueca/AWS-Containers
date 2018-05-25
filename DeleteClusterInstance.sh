#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name ClusterInstanceDocker

waitForDeletion.py -s ClusterInstanceDocker
beep
