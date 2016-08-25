#!bin/bash
multin()
{
echo "  :::Welcome to multinode setup::: "
echo " Press 1: for typical setup Press 2: for custom setup"
read m1;
if [ $m1 == 1 ]
bash /root/Desktop/hadoop.aut/tmultiset.sh
elif [ $m1 == 2 ]
bash /root/Desktop/hadoop.aut/cmultiset.sh
else
echo "Wrong Choice!!!Try again ...."
multin;
fi
}
multin;
 
