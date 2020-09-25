echo "Enter your guess: How many files in the current director?"
read response
echo "You entered: $response"
function get_num_files {
	listing=$( ls -l | egrep -v '^[d]' | wc -l )
	echo $listing
}
get_num_files
