#!bin/bash
menu()
{
dialog --menu  "Please enter your choice:" 10 30 3 1 "Create Single Node Cluster" 2 "Create Multinode Cluster" 3 "logout" 2> tmp.txt
choice=$(cat tmp.txt);

}
choose()
{

if [ $choice == 1 ]
then
bash /root/Desktop/hadoop.aut/cluster1.sh
elif [ $choice == 2 ]
then 
bash /root/Desktop/hadoop.aut/multin.sh
elif [ $choice == 3 ]
then
dialog --infobox " Thank you see you again......." 3 50;
sleep 2;
bash /root/Desktop/hadoop.aut/signin.sh
else
dialog --infobox " Wrong choice!!!" 5 30;
sleep 2;
menu;
choose;
fi
}
menu;
choose;




