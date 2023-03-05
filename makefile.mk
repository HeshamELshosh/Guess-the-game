README.md:
	echo "# Guess-the-game" > $@
	date >> $@
	echo $$(cat guessinggame.sh | wc -l) lines of code >> $@
