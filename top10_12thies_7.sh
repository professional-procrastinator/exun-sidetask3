
while IFS=$'\t', read -r id fname lname class section stream midterm_marks final_marks bus_route phone_number email_address; do
        
        if [[ $class = "XII" ]]; then
            echo "$final_marks marks - $fname $lname $class $section -" >> top10.txt
        
        fi

done < data.tsv


sort -n top10.txt | tail -n 10 | sort -n -r > top10.txt


for i in {1..10}; do
    
    sed -i "${i}s/$/ ${i}th position/" top10.txt
done
