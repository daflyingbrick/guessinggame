response=9999
while [[ $response -ne $listing ]]
do 
function get_num_files {
	listing=$( ls -la | egrep -v '^[d|total]' | wc -l )
}
get_num_files
echo "Enter your guess: How many files in the current directory?"
read response
echo "You entered: $response"

	if [[ $response -eq $listing ]]
	then
		echo "Congratulations, you've guessed correctly!!"
	else
		if [[ $response -lt $listing ]]
			then echo "Your guess is low, try again!"
			else
				echo "You guess is high, try again!"
		fi
	fi
done
