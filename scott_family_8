
students=[]
while IFS=$'\t', read -r id fname lname class section stream midterm_marks final_marks bus_route phone_number email_address; do
    
    if [[ $class = "XII" ]]; then
        if [[ $lname = "Scott" ]]; then
            echo "$fname $lname $class $section" >> Scott.txt
        fi
    
    fi
done < data.tsv


