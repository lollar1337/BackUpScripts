# What to backup. 
backup_files="/home/thisjade/Tex"

# Where to backup to.
#dest="/home/thisjade/mnt/google-drive/Configs"
dest_secondary="/home/thisjade/mnt/onedrive/Backups/LaTeX"

# Create archive filename.
day=$(date +%F)
hour=$(date +%H)
minute=$(date +%M)
hostname=$(cat /etc/hostname)
archive_file="latex-$hostname-$day-$hour-$minute.tgz"

# Print start status message.
echo "Backing up on $day at $hour:$minute"
echo

# Backup the files using tar.
#tar cvzf $dest/$archive_file $backup_files
tar cvzf $dest_secondary/$archive_file $backup_files

# Print end status message.
echo "Backup finished"
