README.md:
	touch README.md
	echo "##Project : Guessing Game" > README.md
	echo "\n date at whicj the make was run:" >> README.md
	date >> README.md
	echo " Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
 
