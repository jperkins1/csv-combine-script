# csv-combine-script

This script is meant to combine files from multiple different CSV files into one output file using `awk`. Feel free to edit to suit your needs. 

# Before You Start
You'll need to get some tools from Apple first. To do that, you can click on [this](https://developer.apple.com/download/more/) link, sign in with your Apple ID, and choose "Command Line Tools for Xcode 12". Once that downloads, it should open automatically. Double click the box in the window that pops up to start the installation process. 

Follow the installation instructions, then proceed to the instructions below.

# Instructions for Use

Open a terminal and enter the following commands:

```
git clone git://github.com/jperkins1/csv-combine-script/
mv csv-combine-script /Users/$(whoami)/Desktop/
cd /Users/$(whoami)/Desktop/csv-combine-script/
chmod a+x macos-homebrew-csv-combine-script.sh csv-combine-script.sh
./macos-homebrew-csv-combine-script.sh
```

Keep an eye on the terminal window, as you'll be prompted for your password and to press "RETURN" at a certain point. 

When prompted later in the script, enter the directory where your CSV files are stored, and press enter. That will produce a file called `output.csv` that will contain the 3rd column of all the CSV files in the directory you specified.

When you want to run this later, open the `csv-combine-script` folder on your desktop, right-click on the `csv-combine-script.sh` file and click "Open With". Click Other. Check the box that says "Always Open With" and choose "All Applications" from the menu. Now, navigate down to "Terminal". Now, you can double click that file and it will open in Terminal so you can do this with whatever you might need. 
