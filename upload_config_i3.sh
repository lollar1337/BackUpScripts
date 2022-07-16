# Move to Git Directory
cd ~/.config/i3

# Create Commit Message
day=$(date +%F)
hour=$(date +%H)
minute=$(date +%M)

# Add any new file
git add .

# Commit changes with Date and Time
git commit -m "$day-$hour-$minute i3 Config Backup"

# Push to Github
git push --set-upstream origin main
