#!bin/bash
main()
{
dialog --backtitle "Cluster Operation" --menu "Select your choice" 15 30 4 1 "Checkpointing" 2 "Heart beat" 3 "Status" 4 "Back to menu" 2> /root/Desktop/hadooptemp/clopstemp1.sh
choice=$(cat /root/Desktop/hadooptemp/clopstemp1.sh)
rm -f /root/Desktop/hadooptemp/clopstemp1.sh
if [ $choice == 1 ]
then
dialog --backtitle "Cluster Operation" --msgbox "Performing Checkpointing" 5 30
(
hadoop dfsadmin -safemode enter 
hadoop dfsadmin -saveNamespace  
hadoop dfsadmin -safemode leave
)
dialog --title "Cluster Operation" --gauge "Please wait ...." 10 60 0
dialog --backtitle "Cluster Operation" --msgbox "Checkpointing Done" 5 30
main;
elif [ $choice== 2 ]
then
dialog --backtitle "Cluster Operation" --msgbox "Heartbeat = 3s (default)" 5 30
main;
elif [ $choice== 3 ]
then
hadoop dfsadmin -getstatus> /root/Desktop/hadooptemp/clopstemp2.sh
dialog --backtitle "Cluster Operation" --textbox /root/Desktop/hadooptemp/clopstemp2.sh 5 20
rm -f /root/Desktop/hadooptemp/clopstemp2.sh
main;
elif [ $choice == 4 ]
then
bash /root/Desktop/hadoop1/mainmenu/mainmenu.sh
fi
}
main;
