echo "Enter your guess: How many files in the current director?"
read response
echo "You entered: $response"
function [get_number_of_files] {
	listing=$(ls -la)
	echo $listing
}
#get_number_of_files
