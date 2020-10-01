# csv-combine-script

This script is meant to combine files from multiple different CSV files into one output file using `awk`. Feel free to edit to suit your needs. 

# Instructions for Use

Open a terminal and enter the following commands:

```
xcode-select --install
git clone git://github.com/jperkins1/csv-combine-script/
cd csv-combine-script/
chmod a+x macos-csv-combine-script.sh
./macos-csv-combine-script.sh
```

Keep an eye on the terminal window, as you'll be prompted for your password and to press "RETURN" at a certain point. 

When prompted later in the script, enter the directory where your CSV files are stored, and press enter. That will produce a file called `output.csv` that will contain the 3rd column of all the CSV files in the directory you specified.
