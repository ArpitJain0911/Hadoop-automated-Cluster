#!bin/bash

echo "                               ------------welcome to the Login page------------                                         ";
s1()
{
echo ":::::please enter username and password ::::::";
echo "Username: ";
read u
echo "Password: ";
read p
if [ $u == "`grep $u /root/Desktop/hadoop.aut/login.txt | cut -d: -f1`"  ] && [ $p == "`grep $p /root/Desktop/hadoop.aut/login.txt | cut -d: -f2`" ];
then 
echo "		login sucessfull!!"
sleep 1;
bash /root/Desktop/hadoop.aut/menu.sh;
else 
echo "		Wrong username or password!!Try again."
sleep 1;
s1;
fi
}

s1;

