#Upon execution of this script, it will analyse how many files are present in the directory the script is located. 
#This number will then be stored in a local variable. The script will then prompt the user to guess how many files 
#are present in the current directory and wait for an input from the user. If the user inputs number is too low, 
#the script will inform the user that the guess was too low and prompt the user to try again. If the input is too high, 
#the script will output that the guess was too high and prompt the user to try again. Upon guessing the number correctly, 
#the script will print a message to the screen, congratulating the user and terminate afterwards.
#The script will only self terminate once the correct number has been entered.
#filename: guessinggame.sh

function intcheck { #This function checks to ensure that the input is in fact a number, as anything other than a number will cause premature termination
	while ! [[  $guess =~ ^[0-9]+$ ]]
	do
		echo 'Kindly enter only a natural number'
		read guess
	done
}

function loopfunc { #This function compares the user input to the correct number
	while [[ $guess -ne $fnum ]]
	do
	        if [[ $guess -lt $fnum ]]
	        then
	                echo 'Too low, please try again'
	                read guess
			intcheck #Check to ensure input is a number
	        else
	                echo 'Too high, please try again'
	                read guess
			intcheck #Check to ensure input is a number
	        fi
	done
}

let fnum=$(ls -1 | wc -l) #In Bash for Ubuntu, the ls -l command always produces a result with one file too many when piped
echo 'Please input your guess of how many files are contained in this directory'
read guess
intcheck #Check to ensure input is a number
loopfunc #Start comparing input to correct number
echo 'Correct! Well done!'




