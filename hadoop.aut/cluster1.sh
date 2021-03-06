#!bin/bash
echo "		Do You Want To Create Single Node Cluster: Y or N"
clmenu()
{
read c1;
if [ $c1 == "y" ] 
then 
rm -rf /k1 /k2;
sed -i 's@<configuration>@<configuration>\n<property>\n<name>dfs.data.dir</name>\n<value>/k1</value>\n</property>@' /etc/hadoop/hdfs-site.xml
sed -i 's@</property>@</property>\n<property>\n<name>dfs.name.dir</name>\n<value>/k2</value>\n</property>\n\n<property>\n<name>mapred.task.tracker</name>\n<value>127.0.0.1:9002</value>\n</property>@' /etc/hadoop/hdfs-site.xml
sed -i 's@<configuration>@<configuration>\n<property>\n<name>fs.default.name</name>\n<value>hdfs://127.0.0.1:9001</value>\n</property>@' /etc/hadoop/core-site.xml
sed -i 's@<configuration>@<configuration>\n<property>\n<name>mapred.job.tracker</name>\n<value>127.0.0.1:9002</value>\n</property>@' /etc/hadoop/mapred-site.xml
hadoop namenode -format -y;
hadoop-daemon.sh start namenode;
hadoop-daemon.sh start datanode;
hadoop-daemon.sh start jobtracker;
hadoop-daemon.sh start tasktracker;
sleep 2;
echo "Your cluster is ready!!"
bash /root/Desktop/hadoop.aut/snmenu.sh;
elif [ $c1 == "n"]
then
echo "REDIRECTING......"
else
echo "Wrong choice!!! Retry...."
clmenu;
fi
}
clmenu;




