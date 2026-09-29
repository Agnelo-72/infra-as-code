#This is same comands that we run in the EC2 instance (via ssh) to install Docker and run the container, 
#but now we are using it in the terraform script to automate this process.

#!/bin/bash
sudo su 
yum update -y
yum install docker -y
service docker start
usermod -a -G docker ec2-user

