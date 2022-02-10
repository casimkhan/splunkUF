#!/bin/bash
sudo apt-get update
sudo apt-get install -y python3-dev git unzip python3-pip awscli curl sshpass
sudo apt-get install gcc python-dev
sudo pip3 install virtualenv
sudo pip3 install psutil
curl -s https://releases.hashicorp.com/terraform/0.14.4/terraform_0.14.4_linux_amd64.zip -o terraform.zip
unzip terraform.zip
sudo mv terraform /usr/local/bin/
git clone https://github.com/splunk/attack_range && cd attack_range
cd terraform/aws/local
terraform init
cd ../../..
cd terraform/azure/local
terraform init
cd ../../..
virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt
