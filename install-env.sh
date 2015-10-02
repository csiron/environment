#!./bin/bash
aws ec2 run-instances --image-id ami-d05e75b8 --count 2 --instance-type t2.micro --key-name ITMO-444-vmware --security-group-ids sg-c7c2fea0 --subnet-id subnet-0aa7a97d --associate-public-ip-address
echo >> /tmp/hello.txt
fi
