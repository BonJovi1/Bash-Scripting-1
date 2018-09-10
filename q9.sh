#!bin/bash
echo "Hi I'm Abhinav, What's your name?"
read name
echo "When is your birthday $name? Please tell me in yyyy-mm-dd format"
read bday

year_born=`echo $bday | cut -d '-' -f1`
year_current=`date -I | cut -d '-' -f1`

age=$(($year_current-$year_born))

date_today=`date -I | tail -c 6`
date_born=`echo $bday | tail -c 6`

if [ "$date_today" == "$date_born" ]
then
	echo "Happy Birthday, $name. You are $age years old today!"
else
	echo "Oh it's not your birthday today :("
fi
