#!/usr/bin/env bash
cd /home/ec2-user/KnCare-Rest/target
sudo /usr/bin/java -jar *.jar > /dev/null 2> /dev/null < /dev/null &
