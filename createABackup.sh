#/bin/bash
#T he path of the folder to back up
backup_files="/home/"

# Backup destination path !-- not final --!
dest="/tmp"

# Create arhive filename
currentDate=`date +%Y-%m-%d`
hostname=$(hostname -s)
archive_file="$hostname-$currentDate.tgz"

# Let the user know that the process is starting
echo -e "backing up $backup_files to $dest/$archive_file \nprocess."

# Print the start dateecho "Script start time: `date`"

# Break line
# Back up the files using tar command
tar czfP $dest/$archive_file $backup_files

# Print the end status message
echo -e "Backup finished! \nScript end time: `date`"
