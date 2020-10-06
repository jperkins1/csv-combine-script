#!/bin/bash

# Ensuring that the Command Line Tools are installed. 
xcode-select --install

# Installing Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Updating the repositories that Brew is looking at
brew update

# Tapping the Homebrew Cask to get access to the software
brew tap homebrew/cask

# Installing Gawk
brew install gawk

echo "You're all set! You should be able to finish the instructions on the Github page."
