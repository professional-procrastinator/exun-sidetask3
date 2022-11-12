failed=0
while IFS=$'\t', read -r id fname lname class section stream midterm_marks final_marks bus_route phone_number email_address; do
    
    if [[ $stream = "science" ]]; then
            if [[ $midterm_marks < 33 ]]; then
                failed=$((failed+1))
            fi
    fi

done < data.tsv

echo $failed
