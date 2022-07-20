day=$(date +%F)
hour=$(date +%H)
minute=$(date +%M)
hostname=$(cat /etc/hostname)

echo "Crontab from $day at $hour:$minute from $hostname:" >> "/home/thisjade/mnt/google-drive/Crontab/crontab-$hostname-$day-$hour-$minute.txt"
echo " " >> "/home/thisjade/mnt/google-drive/Crontab/crontab-$hostname-$day-$hour-$minute.txt"
crontab -l >> "/home/thisjade/mnt/google-drive/Crontab/crontab-$hostname-$day-$hour-$minute.txt"

echo "Crontab from $day at $hour:$minute from $hostname:" >> "/home/thisjade/mnt/onedrive/Linux/crontab-$hostname-$day-$hour-$minute.txt"
echo " " >> "/home/thisjade/mnt/onenote/Linux/crontab-$hostname-$day-$hour-$minute.txt"
crontab -l >> "/home/thisjade/mnt/onenote/Linux/crontab-$hostname-$day-$hour-$minute.txt"

echo "Backup finished"
