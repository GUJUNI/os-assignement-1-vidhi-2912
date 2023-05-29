<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program 12
write a script that accepts a string followed by one or more file names
from command line and display no of lines that consists of given
string each file.
-----------------------------------------------------------------------------------------------------------------------------------------
c
# set the search string as the first argument
string=$1

# loop through each file name
for file in "${@:2}"
do
  # use grep to search for the string in the file and count the number of matching lines
  count=$(grep -c "$string" "$file")

  # print the number of matching lines for each file
  echo "The file $file contains $count lines that consist of '$string'."
done
<<c
-----------------------------------------------------------------------------------------------------------------------------------------
output:-

[mca2231@agni ~]$ sh a1.sh go demo.txt test.txt
The file demo.txt contains 3 lines that consist of 'go'.
The file test.txt contains 1 lines that consist of 'go'.
