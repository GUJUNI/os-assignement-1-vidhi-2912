<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program-3
Write a script that takes file name from user and display all line starting not with a or b or c with line numbers. (Use grep/sed)
-----------------------------------------------------------------------------------------------------------------------------------------
c
echo -n "Enter Filename : "
read file
if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
else
  grep -vn "^[abc]" $file
fi
<<c
-----------------------------------------------------------------------------------------------------------------------------------------
/*
OUTPUT

Enter Filename : n1
6:vowel
7:nest
8:tvisha
9:hover
*/