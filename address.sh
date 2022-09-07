#!/bin/bash
add () {
echo "Enter name"
read name
echo "Enter Email"
read email
echo "Enter phone"
read phone
echo "Enter Uniq id"
read id
echo "Enter city"
read city
echo "Enter state"
read state
echo $name $email $phone $id $city $state >> addrees.txt
}

view () {
echo "Enter Uniq id"
read id
echo
echo "........Your data ..........."
echo -e "\e[1;31mName: \e[0m   $(cat addrees.txt |grep -i $id|awk '{print $1}')"
echo -e "\e[1;31mEmail: \e[0m  $(cat addrees.txt |grep -i $id|awk '{print $1}')"
echo -e "\e[1;31mPhone: \e[0m  $(cat addrees.txt |grep -i $id|awk '{print $3}')"
echo -e "\e[1;31mUnigid: \e[0m $(cat addrees.txt |grep -i $id|awk '{print $4}')"
echo -e "\e[1;31mCity: \e[0m   $(cat addrees.txt |grep -i $id|awk '{print $5}')"
echo -e "\e[1;31mState: \e[0m  $(cat addrees.txt |grep -i $id|awk '{print $6}')"
}

echo "choose below option"
echo "1. add Entry"
echo "2. view entry"
read option
if [ $option -eq 1 ]
then
add
fi
if [ $option -eq 2 ]
then
echo "Enter User ID"
read idk
echo "Enter Password"
read pass
if [ $idk == "root" -a  $pass == "abhi" ]
then
view
fi
if [ $idk != "root" -o $pass != "abhi" ]
then
echo -e "\e[1;31mYou are not autohrized to view the database\e[0m"
fi
fi
