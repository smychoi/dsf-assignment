#!/bin/bash

#navigates to directory housing parking_data.csv file
cd ~/Desktop

#takes parking_data.csv file as a positional parameter from the terminal as the input
csv_file=$1

function infractions {
	#prints each type of parking infraction
	cut -d, -f4 < $csv_file | sort | uniq

	#obtains average value of set_fine_amount - source: video by Nathaniel Jue, https://www.youtube.com/watch?v=cCEOrUu22pE
	awk -F"," 'BEGIN {sum=0; counter=0}
	{
		sum=sum+$5; counter=counter+1
	} END {
		print "Mean fine amount:" 
		print sum/counter
	}' $csv_file 

	#obtains minimum value of set_fine_amount, based on code by clt60 (March 1, 2015): https://stackoverflow.com/questions/28790371/bash-finding-maximum-value-in-a-particular-csv-column
	echo "Minimum fine amount:"
	cut -d, -f5 < $csv_file | sort | head -1

	#obtains maximum value of set_fine_amount, based on code by clt60 (March 1, 2015): https://stackoverflow.com/questions/28790371/bash-finding-maximum-value-in-a-particular-csv-column
	echo "Maximum fine amount:"
	cut -d, -f5 < $csv_file | sort -nr | head -1

	#saves infraction_description, set_fine_amount and location2 for all instances of the infraction PARK IN A FIRE ROUTE to a separate csv file with headings added to the first line
	echo "infraction_description","set_fine_amount","location2" > firerouteinfraction.csv
	cut -d, -f4,5,8 < $csv_file | grep ROUTE >> firerouteinfraction.csv
}

infractions