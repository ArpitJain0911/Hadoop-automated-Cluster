#!/bin/bash

echo "do you want to perform checkpointing Yes or No";
read x;
if [ $x == "yes" ]
then
echo "performing checkpointing through command: cluster will go to safe mode for ~10 sec";
hadoop dfsadmin -safemode enter 
hadoop dfsadmin -saveNamespace  
hadoop dfsadmin -safemode leave
echo "checkpointing done"
sleep 1
bash /root/Desktop/hadoop.aut/snmenu.sh;
else
echo "thank you"
bash /root/Desktop/hadoop.aut/snmenu.sh;
fi

