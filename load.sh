#!/bin/bash --
               			#Change it if You wanna use another shell like ksh/csh/zsh bla bla. -- for making hacker proof  :D
if [ "$#" == "0" ]              #Checking if there are parameters.
then
echo -e "At Least one parameter required.\nType with -help to see Help." # Parameter check Point.
exit 1                                                                   # Exit If No Parameters.
fi
if [ $1 == "-help" ]					# Help Condition like a man page :)
then
echo -e "This is Help Section For Loadshedding script.\nsyntax : load <group> <day> \nEg: load 4 sun mon tue"
exit 1							# Exit After Displaying Help
fi
echo "-------------Loadshedding-------------"	# For Better Looking :D :P
v4=" 5 am : 11 pm ||  4 pm :  8 pm " 		# Initialized Information
v5=" 7 am :  2 pm ||  6 pm :  9 pm  "		# Even If New Loadshedding Schedule Comes, Changing it Changes all the Script
v6=" 4 am :  8 pm ||  1 pm :  6 pm "		# Makes It new.
v7=" 4 am :  9 pm ||  2 pm :  5 pm "
v1=" 6 am :  1 pm ||  5 pm :  9 pm "
v2="11 am :  5 pm ||  8 pm : 11 pm "
v3=" 9 am :  4 am ||  7 pm : 10 pm " 
if [ $1 -eq 1 ]					# Values Given Acc. To Group
then
echo -e "Group $1\n"				# -e so that we can use \n \t etc.
su=$v1
mo=$v2
tu=$v3
we=$v4
th=$v5
fr=$v6
sa=$v7
elif [ $1 -eq 2 ]
then						# Values Given Acc. To Group
echo -e "Group $1\n"  
su=$v7
mo=$v1
tu=$v2
we=$v3 
th=$v4 
fr=$v5 
sa=$v6 
elif [ $1 -eq 3 ]
then						# Values Given Acc. To Group
echo -e "Group $1\n"
su=$v6
mo=$v7
tu=$v1
we=$v2 
th=$v3 
fr=$v4 
sa=$v5 
elif [ $1 -eq 4 ]				# Values Given Acc. To Group
then
echo -e "Group $1\n"
su=$v5
mo=$v6
tu=$v7
we=$v1 
th=$v2 
fr=$v3 
sa=$v4 
elif [ $1 -eq 5 ]				# Values Given Acc. To Group
then
echo -e "Group $1\n"  
su=$v4
mo=$v5
tu=$v6
we=$v7 
th=$v1 
fr=$v2
sa=$v3 
elif [ $1 -eq 6 ]				# Values Given Acc. To Group
then
echo -e "Group $1\n"  
su=$v3
mo=$v4
tu=$v5
we=$v6 
th=$v7 
fr=$v1
sa=$v2 
elif [ $1 -eq 7 ]				# Values Given Acc. To Group
then
echo -e "Group $1\n"  
su=$v2
mo=$v3
tu=$v4
we=$v5 
th=$v6 
fr=$v7 
sa=$v1 
fi
if [ $# == 1 ]					# Mentioning no parameters For $2.
then
echo -e "Sun\t$su\nMon\t$mo\nTue\t$tu\nWed\t$we\nThu\t$th\nFri\t$fr\nSat\t$sa\n" # If only group No. Is passed This Line Prints it.
#exit 1
fi
while (( $# ))					# Checking Parameters
do						# add [ $1 == 'tuesday" || $1 == 'TUE' ]
if [ $1 == 'sun' ]				# for understanding better.
then
echo -e "$1  $su"
elif [ $1 == 'mon' ]
then
echo -e "$1  $mo"
elif [ $1 == 'tue' ]
then
echo -e "$1  $tu"
elif [ $1 == 'wed' ]
then
echo -e "$1  $we"
elif [ $1 == 'thu' ]
then
echo -e "$1  $th"
elif [ $1 == 'fri' ]
then
echo "$1  $fr"
elif [ $1 == 'sat' ]
then
echo -e "$1  $sa"
fi					     # Ending If Statement.
shift					     # Shifting to next Parameter
done					     # Closing While Loop.












