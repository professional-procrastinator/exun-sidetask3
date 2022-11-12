students_in_ten=0
while IFS=$'\t', read -r id fname lname class section stream midterm_marks final_marks bus_route phone_number email_address; do
    if [[ $class = "X" ]]; then
        
        students_in_ten=$((students_in_ten+1))
        fi


done < data.tsv

echo $students_in_ten
