#!bin/bash
echo "                        -------------Welcome to World Of Hadoop------------------- "

menu()
{
echo "Please enter your choice:
1:Create Single Node Cluster
2:Create Multinode Cluster
3:logout"
}
choose()
{
read choice;
if [ $choice == 1 ]
then
bash /root/Desktop/hadoop.aut/cluster1.sh
elif [ $choice == 2 ]
then 
bash /root/Desktop/hadoop.aut/multin.sh
elif [ $choice == 3 ]
then
echo " Thank You!! Logging Out......."
sleep 2;
bash /root/Desktop/hadoop.aut/signin.sh
else
echo "		wrong choice!!! "
menu;
choose;
fi
}
menu;
choose;




