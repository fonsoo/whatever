echo Hola, What is your name?
read myName
echo Bienvenidos, $myName
 
while [[ $myName =~ [^a-zA-Z]+ ]];
do
        echo That is not your name
        echo What is your name?
        read myName
        echo What is up, $myName
done

while [[ ${#myName} -lt 2 ]];
do
        echo Your name need to be greater than 1 character
        echo What is your name?
        read myName
        echo Thanks, $myName.
done

while [[ ${#myName} -gt 20 ]];
do
        echo Your name needs to be less than 21 characters
        echo What is your name?
        read myName
        echo Hey, $myName.
done

while [[ $myName == “” ]];
do
        echo Please enter a name
        read myName
        echo Hi, $myName.
done

echo Please enter a number between 3 and 100
read myNum

while [[ $myNum =~ [^0-9] ]]
do
  echo That is not a number.
  echo Please enter a number:
  read myNum
done

while [[ -z "$myNum" ]];
do
        echo Cannot be blank.
        echo Please enter a number between 3-100.
        read myNum
done

while [[ $myNum -lt 3 ]]
do
       echo Number must be greater than 2.
       read myNum
done

while [[ $myNum -gt 100 ]]
do
        echo Number must be less than 101.
        read myNum
done

counter=0

if [[ $(myNum %2) == 0 ]];
then
	counter=0
else
	counter=1
fi

while [[ $counter -le $myNum ]];
do
	echo "$counter"
	let counter=$counter+2;
	sleep 0.09
done

echo "Thank you for participating in my  counting program"
