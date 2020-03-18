echo 'Starting startup maintenance.'

today=$(date +"%Y-%m-%d-%a--%H:%M:%S")
echo $today
filename="/home/nr/Documents/startuplogs/$today-startuplog.txt"

echo 'Updating'
echo '\nUpdating\n' >> "$filename"
yes | apt-get update >> "$filename"
echo 'Update Complete'

echo 'Upgrading'
echo '\nUpgrading\n' >> "$filename"
yes | apt-get upgrade >> "$filename"
echo 'Upgrading Complete'

echo '\nStartup Complete\n' >> "$filename"
echo 'Startup Complete'
