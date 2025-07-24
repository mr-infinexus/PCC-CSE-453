date

chmod +x 123.sh

chmod -x 123.sh

<<com

echo "process id $$"
echo "file name $0"
echo "first parameters $1"
echo "second parameter $2"
echo "total no of parameters $#"

com

<<com

#declaring and accessing array variables

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

#You can access all the items in an array in one of the following ways -

echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"

com

<<com


#Arithmetic operator


a=10
b=20

val=$(expr $a + $b)
echo "a + b : $val"

val=$(expr $a - $b)
echo "a - b : $val"

val=$(expr $a \* $b)
echo "a * b : $val"

val=$(expr $b / $a)
echo "b / a : $val"

val=$(expr $b % $a)
echo "b % a : $val"

if [ $a == $b ]
then
   echo "a is equal to b"
fi

if [ $a != $b ]
then
   echo "a is not equal to b"
fi


com

<<com

#Use of loop

a=0
while [ "$a" -lt 10 ]    # this is loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  # this is loop2
   do
      echo -n "$b "
      b=$(expr $b - 1)
   done
   echo
   a=$(expr $a + 1)
done

com

<<com

#Define your function here
Hello () {
   echo "Hello World"
}

#Invoke your function
Hello


#Define your function here
Hello () {
   echo "Hello World $1 $2"
}

#Invoke your function
Hello Zara Ali

com

<<com

#String Operators

a="abc"
b="efg"

if [ $a = $b ]
then
   echo "$a = $b : a is equal to b"
else
   echo "$a = $b: a is not equal to b"
fi

if [ $a != $b ]
then
   echo "$a != $b : a is not equal to b"
else
   echo "$a != $b: a is equal to b"
fi

if [ -z $a ]
then
   echo "-z $a : string length is zero"
else
   echo "-z $a : string length is not zero"
fi

if [ -n $a ]
then
   echo "-n $a : string length is not zero"
else
   echo "-n $a : string length is zero"
fi

if [ $a ]
then
   echo "$a : string is not empty"
else
   echo "$a : string is empty"
fi


com

<<com

#Boolean Operators

a=10
b=20

if [ $a -eq $b ]
then
   echo "$a -eq $b : a is equal to b"
else
   echo "$a -eq $b: a is not equal to b"
fi

if [ $a -ne $b ]
then
   echo "$a -ne $b: a is not equal to b"
else
   echo "$a -ne $b : a is equal to b"
fi

if [ $a -gt $b ]
then
   echo "$a -gt $b: a is greater than b"
else
   echo "$a -gt $b: a is not greater than b"
fi

if [ $a -lt $b ]
then
   echo "$a -lt $b: a is less than b"
else
   echo "$a -lt $b: a is not less than b"
fi

if [ $a -ge $b ]
then
   echo "$a -ge $b: a is greater or  equal to b"
else
   echo "$a -ge $b: a is not greater or equal to b"
fi

if [ $a -le $b ]
then
   echo "$a -le $b: a is less or  equal to b"
else
   echo "$a -le $b: a is not less or equal to b"
fi

com

<<com

#File Test operators

file=123.sh

if [ -r $file ]; then
   echo "File has read access"
else
   echo "File does not have read access"
fi

if [ -w $file ]; then
   echo "File has write permission"
else
   echo "File does not have write permission"
fi

if [ -x $file ]; then
   echo "File has execute permission"
else
   echo "File does not have execute permission"
fi

if [ -f $file ]; then
   echo "File is an ordinary file"
else
   echo "This is sepcial file"
fi

if [ -d $file ]; then
   echo "File is a directory"
else
   echo "This is not a directory"
fi

if [ -s $file ]; then
   echo "File size is not zero"
else
   echo "File size is zero"
fi

if [ -e $file ]; then
   echo "File exists"
else
   echo "File does not exist"
fi

com

<<com


#Break


a=0

while [ $a -lt 10 ]
do
   echo $a
   if [ $a -eq 5 ]
   then
      break
   fi
   a=$(expr $a + 1)
done


com
