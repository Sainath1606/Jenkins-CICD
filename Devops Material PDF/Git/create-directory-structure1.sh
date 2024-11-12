#!/bin/bash


country=(USA UK India)
capital=(WashingtonDC London Delhi)

rm -rf /home/ec2-user/countries/
for (( i=0;i<${#country};i++ ))
do
mkdir -p /home/ec2-user/countries/${country[i]}
cd /home/ec2-user/countries/${country[i]}
echo ${capital[i]} > capital.txt
echo "uptime :" `uptime` >> capital.txt
done

echo "Please check the result in dir : /home/ec2-user/countries/"
