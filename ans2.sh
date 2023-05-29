<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2

-----------------------------------------------------------------------------------------------------------------------------------------
Program-2
Write a script that takes file name from user and display all line starting not with a or b or c. (Use grep/sed)
-----------------------------------------------------------------------------------------------------------------------------------------
c
echo -n "Enter Filename : "
read file
if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
else
  grep -v "^[abc]" $file
fi
<<c
-----------------------------------------------------------------------------------------------------------------------------------------
/*
OUTPUT

Enter Filename : n1
vowel
nest
tvisha
hover
*/