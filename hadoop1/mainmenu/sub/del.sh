#!bin/bash
dialog --backtitle "DELETION" --inputbox "ADDRESS OF FILE ON HDFS" 5 50 2> /root/Desktop/hadooptemp/deltemp.sh
input=$(cat /root/Desktop/hadooptemp/deltemp.sh)
rm -f /root/Desktop/hadooptemp/deltemp.sh
hadoopfs -rmf $input  | dialog --backtitle "DELETION" --gauge "Please Wait" 5 60 0;
dialog --backtitle "DELETION" --infobox "File Deleted" 5 30

  

