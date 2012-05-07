echo "*** Converting between the different temperature scales ***"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice
 
if [ $choice -eq 1 ]
then
       echo -n "Enter temperature (C) : "
       read tc
       # formula Tf=(9/5)*Tc+32
       tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
       echo "$tc C = $tf F"
elif [ $choice -eq 2 ]
then
       echo -n "Enter temperature (F) : "
       read tf
       # formula Tc=(5/9)*(Tf-32)
       tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
       echo "$tf = $tc"
else
       echo "Please select 1 or 2 only"
       exit 1
fi

## OUTPUT on linux box was 

## kevin@blackpearl:~/niti_stc_notes/shell_scripts$ ./temperatures.sh 
## *** Converting between the different temperature scales ***
## 1. Convert Celsius temperature into Fahrenheit
## 2. Convert Fahrenheit temperatures into Celsius
## Select your choice (1-2) : 1
## Enter temperature (C) : 23
## 23 C = 73.40 F
## kevin@blackpearl:~/niti_stc_notes/shell_scripts$ ./temperatures.sh 
## *** Converting between the different temperature scales ***
## 1. Convert Celsius temperature into Fahrenheit
## 2. Convert Fahrenheit temperatures into Celsius
## Select your choice (1-2) : 2
## Enter temperature (F) : 73.40
## 73.40 = 22.77

