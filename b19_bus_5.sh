students=[]
while IFS=$'\t', read -r id fname lname class section stream midterm_marks final_marks bus_route phone_number email_address; do
    
    if [[ $bus_route = "b19" ]]; then
        students+=("$fname $lname $class $section")
    fi

done < data.tsv

#loop through the array and add the students to the file
for i in "${students[@]}"; do
    echo "$i" >> b19.txt
done


sed -i '1s/.*/List of students in Bus B19/' b19.txt
