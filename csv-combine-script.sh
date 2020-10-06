#!/bin/bash

read -p "Where are your files stored? (drag and drop from Finder) " directory

# Creating .csv files from your .txt files. The original .txt files will not be altered. 
echo "Creating .csv files..."

for n in $directory/*.txt
do 
	sed 's/\s\+/,/g' "${n}" > "${n}".csv
done

# Executing the script.awk file to take the filename and 3rd column of each of the previously created .csv files and put those all into one output file. 
echo "Creating the output file in the directory you specified."
awk -f script.awk $directory/*.csv > $directory/output.csv
