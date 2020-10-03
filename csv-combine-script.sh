#!/bin/bash

# Asking for user input on where the CSV files are stored
read -p "Where are your images stored? " directory

# Executing the Gawk script (also cloned from Github)
awk -f script.awk $directory/*.csv > $directory/output.csv
