#!/bin/bash

# Create script that updates a server,creates new file that echo number of upgradable packages, and save the file with the current date appended - Nehemiah Monrose - 08/30/2023



# Update server and all dependencies (without prompting for yes)

sudo apt update && sudo apt -y upgrade


# get number/lines of available upgradable packages and save result in variable

upgradable_packages=$(apt list --upgradable | wc -l)


# Create a file with the current date

results="file_log_$(date +'%Y-%m-%d').txt"


# write the number of upgradable packages to file

echo "$upgradable_packages updates are available." > "$results"


#Echo to screen

echo "Updates available: $upgradable_packages"
