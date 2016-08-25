#!bin/bash
dialog --backtitle "Put a file" --inputbox "Enter the full path of the file" 5 50 2> /root/Desktop/hadooptemp/puttemp.txt
input=$(cat /root/Desktop/hadooptemp/puttemp.txt);
rm -f /root/Desktop/hadooptemp/puttemp.txt
hadoop -fs -put $input / | dialog --backtitle "Put a file" --gauge "Please wait" 10 60 0|echo $? > /root/Desktop/hadooptemp/exittemp.txt
exit=$(cat /root/Desktop/hadooptemp/exittemp.txt)
rm -f /root/Desktop/hadooptemp/exittemp.txt;
if [ $exit == 0 ]
then
dialog --backtitle "Put a file" --infobox "File has been successfully put";
sleep 2;
bash /root/hadoop1/mainmenu/mainmenu.sh
else
dialog --backtitle "Put a file" --infobox "Error Try Again" 5 30
bash /root/hadoop1/mainmenu/mainmenu.sh;
fi

