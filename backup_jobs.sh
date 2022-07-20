# What to backup. 
backup_files="/home/thisjade/Jobs"

# Where to backup to.
dest="/home/thisjade/mnt/google-drive/Jobs"
dest2="/home/thisjade/mnt/onedrive/Backups/Linux/jobs"

# Create archive filename.
day=$(date +%F)
hour=$(date +%H)
minute=$(date +%M)
hostname=$(cat /etc/hostname)
archive_file="jobs-$hostname-$day-$hour-$minute.tgz"

# Print start status message.
echo "Backing up on $day at $hour:$minute"
echo

# Backup the files using tar.
tar cvzf $dest/$archive_file $backup_files
tar cvzf $dest2/$archive_file $backup_files

# Print end status message.
echo "Backup finished"
