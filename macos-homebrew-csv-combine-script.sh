#!/bin/bash

# Installing Homebrew
xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update
brew tap homebrew/cask

# Installing Gawk
brew install gawk


# Asking for user input on where the CSV files are stored
read -p "Where are your images stored? " directory

# Creating the output.csv file with the filenames and executing the Gawk script (also cloned from Github) to put the 3rd column into the file under each respective filename.
awk -F, 'FNR == 1{ print FILENAME}' ORS=',' $directory/*.txt > $directory/output.csv
awk -f /Users/$(whoami)/Desktop/csv-combine-script/script.awk $directory/*.txt >> $directory/output.csv
