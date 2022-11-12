gmail_emails=0
total_students=0
while IFS=$'\t', read -r id fname lname class section stream midterm_marks final_marks bus_route phone_number email_address; do
    

        if [[ $email_address == *gmail.com* ]]; then
            gmail_emails=$((gmail_emails+1))
        fi

        total_students=$((total_students+1))
done < data.tsv

percentage=$(( $gmail_emails*100/$total_students))
echo $percentage
