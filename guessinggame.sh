file_count () {
	echo $(ls | wc -l)
}

while
	echo  Guess how many files in the current directory ?
	read guess
	[[ $guess -ne $(file_count) ]]
do
	echo -n  Your guess is too\ 
	if [[ $guess -lt $(file_count) ]]
	then
		echo -n low,
	elif [[ $guess -gt $(file_count) ]]
	then
		echo -n high,
	fi
	echo Please try again
done

echo  Your guess is correct.
