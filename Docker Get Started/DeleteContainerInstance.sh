#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name ContainerInstanceDocker
waitForDeletion.py -s ContainerInstanceDocker
beep

