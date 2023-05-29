<<c
Rollno		    :31
Name	  	    :Rathod Vidhi 
Sub		        :Operating Systems
Course		    :MCA-2
Assignment      :2
-----------------------------------------------------------------------------------------------------------------------------------------
Program 15
Write a shell script to generate summary from a file : “student.dat”
with following format :
Student_no : student_name : gender : marks1 : marks2 : marks3
Each field must be separated by a delimeter ‘-‘
Process the following queries:
1. Calculate the total marks of each student
2. Calculate the percentage of marks for each student
3. Count the total number of male and female students
4. Count the total number of students who pass and those who fail.

-----------------------------------------------------------------------------------------------------------------------------------------
c
while IFS=':' read -r student_no student_name gender marks1 marks2 marks3; do

  
  total_marks=$(($marks1 + $marks2 + $marks3))

 
  percentage=$(echo "scale=2; ($total_marks / 3)" | bc)


  if [ "$gender" = "male" ]; then
    male_count=$((male_count+1))
  else
    female_count=$((female_count+1))
  fi

  

   if (( $(echo "$percentage > 40" | bc -l) )); then   # check if percentage is greater than 40
        pass_count=$((pass_count + 1))                  # increment pass count
   else
        fail_count=$((fail_count+1))

   fi

 
  echo "$student_no-$student_name-$gender-$marks1-$marks2-$marks3-$total_marks-$percentage"

done < Students.dat


echo "Male Count: $male_count"
echo "Female Count: $female_count"


echo "Pass Count: $pass_count"
echo "Fail Count: $fail_count"
<<c
-----------------------------------------------------------------------------------------------------------
output:-

[mca2231@agni ~]$ sh p1.sh                                                                                                                                   26,49         All
1_104-mali-female-99-99-99-297-99.00
2_103-aayush-male-98-98-98-294-98.00
3_102-mal-male-97-97-97-291-97.00
4_101-tithi-female-96-96-96-288-96.00
Male Count: 4
Female Count: 2
Pass Count: 4
Fail Count: