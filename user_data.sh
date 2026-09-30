#!/bin/bash

#This is same comands that we run in the EC2 instance (via ssh) to install Docker and run the container, 
#but now we are using it in the terraform script to automate this process.

 
yum update -y
yum install docker -y
systemctl enable docker
systemctl start docker
usermod -a -G docker ec2-user

