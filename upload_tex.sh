# Move to Git Directory
cd ~/Tex

# Create Commit Message
day=$(date +%F)
hour=$(date +%H)
minute=$(date +%M)

# Add any new file
git add .

# Commit changes with Date and Time
git commit -m "$day-$hour-$minute Tex Backup"

# Push to Github
git push --set-upstream origin main
