total=0
sum=0
while IFS=$'\t', read -r id fname lname class section stream midterm_marks final_marks bus_route phone_number email_address; do
    
    if [[ $class == "XII" ]]; then
        total=$((total + 1))
        sum=$((sum + midterm_marks))

    
    fi

done < data.tsv

avg=$((sum / total))
echo "$avg"



