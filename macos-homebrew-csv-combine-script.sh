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

# Executing the Gawk script (also cloned from Github)
awk -f script.awk $directory/* > $directory/output.csv
