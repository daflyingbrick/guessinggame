all: README.md

README.md:
	echo "# Guessing Game" > README.md
	echo $$(date) >> README.md
	echo "guessinggame.sh contains" >> README.md ; wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md ; echo "lines." >> README.md
