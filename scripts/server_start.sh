#!/usr/bin/env bash
cd /home/ec2-user/KnCare-Rest/target
sudo nohup java -jar /home/ec2-user/KnCare-0.0.1-SNAPSHOT.jar > log.log 2>&1 &
