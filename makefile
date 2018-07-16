README.md:
	echo "# Peer Review Project" > README.md
	echo "" >> README.md
	printf "The make command was executed on " >> README.md
	date >> README.md
	echo "" >> README.md
	printf "The number of lines in the guessinggame.sh script is " >> README.md
	wc -l < guessinggame.sh >> README.md
