#!/usr/bin/env bash
cd /home/ec2-user/KnCare-Rest
sudo nohup java -jar /home/ec2-user/KnCare-Rest/KnCare-0.0.1-SNAPSHOT.jar > log.log 2>&1 &
