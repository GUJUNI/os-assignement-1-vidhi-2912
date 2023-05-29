<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program 13
Create a text file with the headings and data as bill_no, cust_no,
cust_name, address, city, pin, current_meter_reading,
previous_meter_reading, month. Write a script that takes the input
from this file and displays the bill for the query against
cust_no/bill_no/cust_name. (input at least 15/20 records in this text
file); otherwise message that no record exists.
-----------------------------------------------------------------------------------------------------------------------------------------
c
echo "Enter (cust_no/bill_no/cust_name): "
read query


result=$(grep -i "$query" bill_data.txt)


if [ -z "$result" ]; then
  echo "No record exists for query: $query"
else
  
  echo "Bill information for $query:"
  echo "$result"
fi
<<c
-----------------------------------------------------------------------------------------------------------------------------------------
output:-
Enter query (cust_no/bill_no/cust_name):
rohan
Bill information for rohan:
1,110,rohan,chitra,bhavnagar,252514,64568054,5865214
