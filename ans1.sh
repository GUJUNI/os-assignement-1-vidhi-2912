<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program-1
Write a script that takes file name from user and display all line starting with a or b or c (Use grep/sed)
-----------------------------------------------------------------------------------------------------------------------------------------
c
echo -n "Enter Filename : "
read file
if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
else
  grep "^[abc]" $file
fi
<<c
-----------------------------------------------------------------------------------------------------------------------------------------
/*
OUTPUT

Enter Filename : n1
align
boomerang
cat
catal
bull
antique
*/



































