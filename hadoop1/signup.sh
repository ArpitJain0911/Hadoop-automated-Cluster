#!bin/bash
dialog --inputbox "Enter Username" 5 30 2>> /root/Desktop/hadoop1/login.txt
dialog --inputbox "Enter Password" 5 30 2>> /root/Desktop/hadoop1/password.txt
dialog --messagebox "Sign up successfull!!" 10 40 
bash /root/Desktop/hadoop1/start.sh
