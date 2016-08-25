#!bin/bash
hadoopfs-count-q/input > /root/Desktop/hadooptemp/directorytemp.txt

dialog --backtitle "Directory Info" --textbox /root/Desktop/hadooptemp/directorytemp.txt 10 50
bash /root/Desktop/hadoop1/mainmenu/mainmenu.sh


