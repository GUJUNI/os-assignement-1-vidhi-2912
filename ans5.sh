<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program 5
Write a script that takes file name from user and display all line start with t or T and second character must be either 'h' or 's'. 
(Use grep/sed)
-----------------------------------------------------------------------------------------------------------------------------------------
c
echo -n "Enter Filename : "
read file

if [ ! -f $file ]; then
  echo "File not found!"
  exit 1
else
  echo "Lines starting with t or T and having either 'h' or 's' as the second character:"
  grep -E '^[tT][h|s]' "$file"
fi
<<c
-----------------------------------------------------------------------------------------------------------------------------------------

OUTPUT

Enter filename:
d1.txt
Lines starting with t or T and having either 'h' or 's' as the second character:

[mca2231@agni ~]$ cat master_file.txt
this is vidhi
The Rollwala dept 
there is a class
