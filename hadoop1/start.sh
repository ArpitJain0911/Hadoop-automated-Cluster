#!bin/bash
dialog --backtitle "Welcome to hadoop" --menu "select your choice" 10 30 2 1 "sign up" 2 "login" 2> /root/Desktop/hadooptemp/tmpstart.txt
choice=$(cat /root/Desktop/hadooptemp/tmpstart.txt)
rm -f /root/Desktop/hadooptemp/tmpstart.txt
if [ $choice == 1 ]
then
bash /root/Desktop/hadoop1/signup.sh
elif [ $choice == 2 ]
then
bash /root/Desktop/hadoop1/signin.sh
else
dialog --infobox "Thank You" 10 20
fi


