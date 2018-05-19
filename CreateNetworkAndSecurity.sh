#!/bin/bash

aws cloudformation create-stack --stack-name Docker-NetworkAndSecurity --template-body file://NetworkAndSecurity.yaml --region eu-west-1 --profile alberto
