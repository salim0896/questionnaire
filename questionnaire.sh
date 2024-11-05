echo 					~~~~~~~~Questionnaire~~~~~~~~
echo    		 ~~Results will be saved to a file and emailed to you~~

Question1="Whats your name?"
echo $Question1
read name
echo  Hi $name 

Question2="Where are you currently located (city)?"
echo $Question2
read city
echo Hi $name, you are located in $city.

Question3="Name 3 of your favourite genres of music?"
echo $Question3
read music1
read music2
read music3
echo "Your 3 genres of music are $music1, $music2, $music3."

while true; do
echo "Your name is $name, you are located in $city and your favourite musical genres are $music1, $music2, $music3."
echo 'Type "YES" to confirm or "NO" to redo'
read confirmation

if [[ $confirmation == "yes" || $confirmation == "YES" ]]; then
    echo "Thank you, your details have been saved and one of our representatives will be in touch."

#userinputs stored in files
echo "$name, $city, $music1, $music2, $music3" >> questionnaire_output.txt
break
elif [[ $confirmation == "no" || $confirmation == "NO" ]]; then
    echo "Let's try again from the beginning."
exec /home/samson/questionnaire.sh
break
else
    echo "Invalid response. Please type 'YES' or 'NO'."

fi
done
