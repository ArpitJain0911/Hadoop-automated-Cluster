#!bin/bash
echo ":::::::::::welcome to Home Page::::::::::::"
hmenu()
{
echo "Enter your choice: 1:Sign Up 2:Login"
read h1;
if [ $h1 == 1 ]
then
echo "Enter Username: "
read usrn;
	if [ $usrn == "`grep $usrn /root/Desktop/hadoop.aut/login.txt | cut -d: -f1`" ]
	then
	echo "Username already Exists!! Try Again...."
	hmenu;
	else
	echo "Please enter your Password: "
	read supass;
	echo $usrn:$supass >> /root/Desktop/hadoop.aut/login.txt
	echo "Signup sucessfull!!"
	sleep 2;
	hmenu;
	fi
elif [ $h1 == 2 ]
then
bash /root/Desktop/hadoop.aut/signin.sh
else
echo "Wrong Choice!!!Try again..."
hmenu;
fi
}
hmenu;


