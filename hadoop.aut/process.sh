#!bin/bash
menu2()
{ echo "Press 1 for process ids\n press 2 for killing a specific process\n press 3 to stop cluster" }
menu2;
read y;
if [ $y == 1 ]
then
echo "Id of namenode is = `/usr/java/jdk1.7.0_51/bin/jps | grep Name | cut -d" " -f1`"
echo "Id of Datanode is = `/usr/java/jdk1.7.0_51/bin/jps | grep Data | cut -d" " -f1`"
elif [ $y == 2 ]
then
echo "enter the process ID to kill"
read pid;
kill $pid
elif [ $y == 3 ]
then
echo"WARNING: This will switch off data and namenode. Do you want to proceed? y/n"
read y2;
 if [ $y2 == "y" ]
	then
	hadoop-daemon.sh stop datanode
	echo "datanose stopped"
	hadoop-daemon.sh stop namenode
	echo "namenode stopped"
else
	menu2;
fi
else
echo "other time"
fi

