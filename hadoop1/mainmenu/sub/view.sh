#!bin/bash
dialog --backtitle "File Lists" --inputbox "Enter folder address" 5 30 2> /root/Desktop/hadooptemp/viewtemp.txt
choice=$(cat /root/Desktop/hadooptemp/viewtemp.txt)
rm -f /root/Desktop/hadooptemp/viewtemp.txt
hadoop -ls $choice > /root/Desktop/hadooptemp/viewtemp2.txt
dialog --backtitle "File Lists" --textbox /root/Desktop/hadooptemp/viewtemp2.txt 30 50
bash /root/Desktop/hadoop1/mainmenu/mainmenu.sh
 
