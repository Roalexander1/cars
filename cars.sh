#!/bin/bash
#cars.sh
#Trey Alexander
l=1
while [ "$l" -eq "1" ]
do
	echo"Type the number 1 to enter a new car"
	echo"Type the number 2 to display the list of cars"
	echo"Type the number 3 to quit and exit the program"
	read number
	case "$number" in
		"1") 
			echo"Enter the Year"
			read Year
			echo"Enter the Make"
			read Make
			echo"Enter the Model"
			read Model
			add_car+=$Year
			add_car+=":" 
			add_car+=$Make
			add_car+=":" 
			add_car+=$Model
			echo $add_car >> My_old_cars ;;
		"2") sort My_old_cars ;;
		"3") echo"Goodbye"
			l=0 ;;
	esac
done
