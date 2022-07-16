day=$(date +%F)
hour=$(date +%H)
minute=$(date +%M)
hostname=$(cat /etc/hostname)

echo "Packagelist from $day at $hour:$minute from $hostname:" >> "/home/thisjade/mnt/google-drive/Packages/packagelist-$hostname-$day-$hour-$minute.txt"
echo " " >> "/home/thisjade/mnt/google-drive/Packages/packagelist-$hostname-$day-$hour-$minute.txt"
pacman -Qq >> "/home/thisjade/mnt/google-drive/Packages/packagelist-$hostname-$day-$hour-$minute.txt"

echo "Backup finished"
