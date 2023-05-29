<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program-7
Write a script which takes input from a file, with multiple records, as:
Firstname:middlename:lastname:address:city:pin:phone
and displays output as:
Record 1
Lastname middlename firstname
Address
City – pin
Phone
Record 2
Lastname middlename firstname
Address
City – pin
Phone
and so on, for all records
-----------------------------------------------------------------------------------------------------------------------------------------
c
echo -n "Enter Filename : "
read file
if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
else
  records=1
  while IFS=: read -r firstname middlename lastname address city pin phone;
  do
    echo "Record $records"
    echo "$lastname $middlename $firstname"
    echo "$address"
    echo "$city - $pin"
    echo "$phone"
    echo ""

    records=$((records + 1))
  done < $file
fi
<<c
-----------------------------------------------------------------------------------------------------------------------------------------

OUTPUT

Enter Filename : r1.sh
Record 1
Rathod vidhi
Tilaknagar
Bhavnagar - 364001
9328363226

Record 2
Mali kathwadiya
Surendranagar
Surendranagar- 365212
9054767652

