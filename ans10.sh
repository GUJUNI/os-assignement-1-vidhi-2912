<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program 10
 Write a shell script to display list of files which can be either regular or directory along with number of links in ascending order of links.
--------------------------------------------------------------------------------------------------------------------------------------
c
echo "Number of Links  | File/Directory Name : "
echo "==========================================="
ls -l | awk '{print $2,$NF}' | sort -n | awk '{print $1, "\t\t", $2}'

--------------------------------------------------------------------------------------------------------------------------------------
<<c
output:-
[mca2231@agni ~]$ sh a1.sh
Number of Links  | File/Directory Name :
===========================================
1                a1.sh
1                ifcon.sh
1                master_file.txt
1                test.txt
16               16
*/