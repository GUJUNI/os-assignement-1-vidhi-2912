<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program-8
Write a script that shows usernames and no. of processes running for them
-----------------------------------------------------------------------------------------------------------------------------------------
c
echo "Username and their no. of processes"
usernames=$(ps -eo user= | sort | uniq | awk '{print $1}')
for user in $usernames
do
    processes=$(ps -U $user | awk 'END {print NR-1}')
    echo "$user - $processes"
done
<<c
-----------------------------------------------------------------------------------------------------------------------------------------
OUTPUT

Username and their no. of processes
avahi - 2
dbus - 1
gdm - 14
mca2240 - 2
mca2214 - 2
mca2209 - 3
mca2218 - 6

