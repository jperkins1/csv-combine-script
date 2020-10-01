#!/bin/bash

read -p "Where are your images stored? " directory

awk -f script.awk $directory/* > $directory/output.csv

