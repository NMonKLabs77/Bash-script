# Bash-script

<p>I created a bash script that Would run every Friday at 11pm using CRON.It updates the server,
  creates a new file with the line about how many packages can be upgraded
  that outputs to the screen and saves file with the current date appended to it </p>
 
 [Link to Bash Script](/build.sh)



## How I went about Setting up the CRON task

1) Access the Crontab configuration with: crontab -e
2) Press "i" to be enable editing mode
3) Type this code on to specify day and time to run build.sh script:  0 23 * * 5 echo "Script is scheduled to run!"  >>  ~/build.sh
4) Press "ESC" to exit
5) Type "w" to save Crontab
6) Type "q" to exit Crontab
7) To see your Crontab, enter : crontab -l 
