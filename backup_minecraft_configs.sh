# What to backup. 
backup_files="\
/home/thisjade/.minecraft/mods \
/home/thisjade/.minecraft/resourcepacks \
/home/thisjade/.minecraft/screenshots \
/home/thisjade/.minecraft/shaderpacks \
/home/thisjade/.minecraft/servers.dat/ \
/home/thisjade/.minecraft/servers.dat_old/ \
/home/thisjade/.minecraft/options.txt/ \
/home/thisjade/.minecraft/optionsof.txt/ \
/home/thisjade/.minecraft/optionsshaders.txt/ \
/home/thisjade/.minecraft/XaeroWaypoints \
/home/thisjade/.minecraft/XaeroWorldMap \
/home/thisjade/.minecraft/config \
" 

# Where to backup to.
dest="/home/thisjade/mnt/google-drive/Minecraft/Configs"

# Create archive filename.
day=$(date +%F)
hour=$(date +%H)
minute=$(date +%M)
hostname=$(cat /etc/hostname)
archive_file="configs-minecraft-$hostname-$day-$hour-$minute.tgz"

# Print start status message.
echo "Backing up on $day at $hour:$minute"
echo

# Backup the files using tar.
tar cvzf $dest/$archive_file $backup_files

# Print end status message.
echo "Backup finished"
