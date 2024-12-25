###########################################################
# Script: jenkins.sh 
# Purpose: Install jenkins on ubuntu/debian
# Steps: 
  # 1. Update package list and upgrade
  # 2. Install OpenJDK 17 runtime environment (JRE)
  # 3. Add Jenkins key and repository
  # 4. Update package list to include Jenkins repository
  # 5. Install Jenkins
##########################################################

#!/bin/bash

sudo apt update -y && sudo apt upgrade -y
sudo apt install openjdk-17-jre -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update -y
sudo apt install jenkins -y


# installation on docker : 
# docker run --name my-jenkins  -p 8080:8080 -p 50000:50000 -v /test:/var/jenkins_home jenkins/jenkins
