echo "Enter your guess: How many files in the current director?"
read response
echo "You entered: $response"
function get_num_files {
	listing=$( ls -la | egrep -v '^[d|total]' | wc -l )
#	listing=$( ls -la | egrep '^[d]' | wc -l )
	echo $listing
}
get_num_files
if [[ $response -eq $listing ]]
then
	echo "Congratulations, you are correct!"
fi
echo "End program"
