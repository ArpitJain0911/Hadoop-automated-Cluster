#!bin/bash
dialog --backtitle "LOGIN"  --inputbox "Enter username" 5 40 2> /root/Desktop/hadooptemp/usrtemp.txt
usrn=$(cat /root/Desktop/hadooptemp/signinusrtemp.txt)
rm -f /root/Desktop/hadooptemp/usrtemp.txt
if [ $usrn == "`grep  $usrn /root/Desktop/hadoop1/login.txt`"]
then
dialog --backtitle "LOGIN"  --inputbox "Enter Password" 5 40 2> /root/Desktop/hadooptemp/signinpasstemp.txt
pass=$(cat signinpasstemp.txt);
rm -f /root/Desktop/hadooptemp/signinpasstemp.txt;
if [ $pass == `grep  $usrn /root/Desktop/hadoop1/password.txt` ]
then
dialog --backtitle "LOGIN" --infobox "Login successfull!!" 6 40;
sleep 2;
bash /root/Desktop/hadoop1/menu.sh;
else
dialog --backtitle "LOGIN" --infobox "WRONG PASSWORD TRY AGAIN" 6 50;
sleep 2;
bash /root/Desktop/hadoop1/start.sh
fi
else
dialog --backtitle "LOGIN" --infobox "WRONG USERNAME TRY AGAIN" 6 50;
sleep 2;
bash /root/Desktop/hadoop1/start.sh
fi



