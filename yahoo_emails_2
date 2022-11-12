
yahoo_emails=0
while IFS=$'\t', read -r id fname lname class section stream midterm_marks final_marks bus_route phone_number email_address; do
    

        if [[ $email_address == *yahoo.com* ]]; then
            yahoo_emails=$((yahoo_emails+1))
        fi
done < data.tsv

echo $yahoo_emails
