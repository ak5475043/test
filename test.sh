
#1.
#we can perform string manipulation using string concatenation and substring extraction
#String extraction 

#eg:

a=ayush
b=kumar

echo $a
#this is used to extract value from "a" variable

echo $a $b
#this is used to concatenate both variable "a" and "b"

echo ${#a}
#this is used to give the length of value of variable "a"

echo -e "ayush \tkumar"
#it will give tab(escaped sequence) between two string

echo -e "ayush \nkumar"
#it will change line for second string this is also an example of escaped sequence 




#2.
#readonly command is used to assign a value to a variable which can be only read cannot be modified or changed

#eg
readonly c=100
echo $c

#now if we run command to store any other value to c it will show that "c" is readonly variable





#3.
#we can redirect input and output stream using following commands
cat > sample.txt
#it will provide us space to write the content on the terminal which will then save to sample.txt file
ls -al > sample.txt
#it will save the output of command ls -al as content to the sample.txt file
#using single arrow will overwrite the previous content with the new content
#to append the content we can use double arrow
#eg: 
ls -al >> sample.txt

ls -al 1>file1.txt 2>&1
#using this the output will save to file1.txt or if any error occurs it will also be save to file1.txt





#4.
#single quotes will preserve the literal value of each character
#convinient when we dont want to use escape character

#whereas double quotes will preseve the literal value of all character

#eg:
ex=10
echo '$ex'
#it will give the string "$ex" as a result
echo "$ex"
#it will give the value of variable "ex" as a result i.e 10
#we use double quotes when we call a variable which we read from user or when we want to display partiuclar string on terminal we can use it with echo command 
#eg:
echo "enter first string"
read st1
echo "enter second string"
read st2
if 
[ "$st1" \> "$st2" ]
then
echo "first string is greater than second string"
elif
[ "$st1" \< "$st2" ]
then
echo "second string is greater than first string"
else
echo "both string are same"
fi





#5.
#grep command is used to search a particular string or pattern in a file
#eg 
grep "option" file1.txt
#this will highlight the string option from the content of file1.txt
#we can use flags like -i -n -v with grep command
grep -n "option" file1.txt
#it will give the line no. at which the string option resides
grep -i "option" file1.txt
#it will highlight the string "option" regardless of case insensitive
grep -v "option" file1.txt
#it will display the content of the file without the string "option"

#sed command is used to replace a string with other given string
#eg
sed 's/option/command/' file1.txt
#this will replace the string "option" with string 'command" from the content of file1.txt
sed -n 's/option/command/' file1.txt
#this will replace the string "option" with string 'command" from the content of file1.txt and will give only the replaced line
sed '2d' file1.txt
#it will delete the 2nd line from the content of the file1.txt 
sed '2,5d' file1.txt
#it will delete the content from 2nd line to 5th line of the file1.txt
sed '$d' file1.txt
#it will delete the last line from the content of the file1.txt





#6.
#process substitutions refers to the output of a command to process by aanother command we can use pipeline for process substitution
#eg:
cat names.txt | tr "[a-z]" "[A-Z]"
#this will give us the content of the file names.txt with all the strings in uppercase





#7.
# we can use "&" at the end of the script or command to make it run on background
# we can check if the job is runing is running on background using job command
# for monitoring the job we can use commands like top , htop , strace , dtrace, sar 
# and to kill the process we can use KILL command followed by the process id 
# eg:
ping facebook.com &





# 8.
# Trap command is used to detect the given signal and execute the command which is associated to the trap whenever it detect the associated signal.
# eg:
trap "echo EXIT" 0
trap "echo INTERUPTED" 2
ls -al
sleep 4
ls
# here signal 0 means terminated successfully
# whenever it will trap signal 0 it will print EXIT
# here signal 2 means the process is interupted 
# whenever it will trap signal 0 it will print INTERUPTED





# 9.
# we can use trap command, sleep command, kill command in our scipt to deal with the singals
# sleep command is used when we want to pause the script for certain time rather than terminating it
# eg:
ls -al
sleep 2
cat file1.txt
sleep 3
exit
# in this the script will take a pause for 2 secs after executing the "ls -al" command
# then it will take a pause of 3 secs ater displaying the content of file1.txt then it will exit the script.

#kill command is used to terminate a process followed by the process id
KILL 121 
#or
Kill-9 121 

# trap command is used to trap the associate single and perform the associated command
# we can associate signals : 0- for successfull termination of the script
#                            1(SIGHUP)- hang up the process
#                            2(SIGINT)- interupt the process
#                            3(SIGQUIT)- stop the process
#                            9(SIGKILL)- to kill the process
eg:
trap "echo EXIT successfully" 0
trap "echo Hanged up" 1
trap "echo interupted" 2
trap "echo stoped" 3
trap "echo killed" 9
n=1
echo PID is: $$
while [ $n -le 5 ]
do 
echo test
sleep 2
n=$(( $n + 1 ))
done
                             





#10.
#source command is used to execute a file in the script.
#eg:
source c.txt
#it will execute all the commands which are included in c.txt file 
#suppose we have c.txt file with ls command and cal command
#when we use source c.txt it will display the output of ls command and cal command








 