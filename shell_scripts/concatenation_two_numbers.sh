echo "enter first number to be concatenated:"
read number1
echo "enter second number to be concatenated:"
read number2

#ST1=$1
#STR1=$2
OUT="$number1$number2"
	echo "Concatenated string is - $OUT"
len=$(expr length $OUT)
	echo "concatenated String Length is - $len"

#OUTPUT on Linux ubuntu
#kevin@blackpearl:~/niti_stc_notes/trainingStuff/shell_scripts$ ./concatenation_two_numbers.sh 
#enter first number to be concatenated:
#3
#enter second number to be concatenated:
#4 
#Concatenated string is - 34
#concatenated String Length is - 2

