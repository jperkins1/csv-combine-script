#!/bin/bash

read -p "Where are your images stored? " directory
read -p "Where is your .awk script stored " awkdir

awk -f $awkdir/script.awk $directory/* > output.csv

