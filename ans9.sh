<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program 9
The book master file contains the fields book_no, book_name, author,# dateofpurchase ,each field is separated by hypen. write a script for
 (A) Add
 (b) Modify
 (C) Delete
 from above file.
------------------------------------------------------------------------------------------------------------------------------------------------------------------
c
add_record() {
    echo "Enter book_no:"
    read book_no
    echo "Enter book_name:"
    read book_name
    echo "Enter author:"
    read author
    echo "Enter dateofpurchase (yyyy-mm-dd):"
    read dateofpurchase

    echo "$book_no-$book_name-$author-$dateofpurchase" >> master_file.txt

    echo "Record added successfully!"
}

modify_record() {
    echo "Enter book_no to modify:"
    read book_no
    line_num=$(grep -n "^$book_no-" master_file.txt | cut -d ":" -f 1)

    if [ -z "$line_num" ]
    then
        echo "Record not found!"
    else
        echo "Enter new book_name (press enter to keep existing value):"
        read new_book_name
        echo "Enter new author (press enter to keep existing value):"
        read new_author
        echo "Enter new dateofpurchase (yyyy-mm-dd) (press enter to keep existing value):"
        read new_dateofpurchase

        sed -i "${line_num}s/[^-]*/$new_book_name/2" master_file.txt
        sed -i "${line_num}s/[^-]*/$new_author/3" master_file.txt
        sed -i "${line_num}s/[^-]*/$new_dateofpurchase/4" master_file.txt

        echo "Record modified successfully!"
    fi
}

delete_record() {
    echo "Enter book_no to delete:"
    read book_no
    line_num=$(grep -n "^$book_no-" master_file.txt | cut -d ":" -f 1)

    if [ -z "$line_num" ]
    then
        echo "Record not found!"
    else
        sed -i "${line_num}d" master_file.txt

        echo "Record deleted successfully!"
    fi
}

while true
do
    echo "Select an option:"
    echo "1. Add record"
    echo "2. Modify record"
    echo "3. Delete record"
    echo "4. Exit"
    read choice

    case $choice in
        1)
            add_record
            ;;
        2)
            modify_record
            ;;
        3)
            delete_record
            ;;
        4)
            exit 0
            ;;
        *)
            echo "Invalid choice! Please select again."
            ;;
    esac

done
<<c
------------------------------------------------------------------------------------------
Output:-
[mca2231@agni ~]$ sh a1.sh
Select an option:
1. Add record
2. Modify record
3. Delete record
4. Exit
1
Enter book_no:
c by rc
Enter book_name:
java begginers
Enter author:
even horten
Enter dateofpurchase (yyyy-mm-dd):
2010-09-12
Record added successfully!