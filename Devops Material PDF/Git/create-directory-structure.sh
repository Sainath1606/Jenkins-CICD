#!/bin/bash

echo "please enter the number of countries"
read num

rm -rf /home/ec2-user/countries/
for (( i=1;i<=$num;i++ ))
do
echo "Please enter the country name"
read country
mkdir -p  /home/ec2-user/countries/$country
cd  /home/ec2-user/countries/$country
touch capital.txt
echo "Please enter the $country capital"
read capital
echo $capital > capital.txt 
echo "uptime :" `uptime` >> capital.txt
done
echo "Please check the result in dir : /home/ec2-user/countries/"

