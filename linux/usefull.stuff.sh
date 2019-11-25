# Commands to find disk usage
sudo find . -xdev -type f | cut -d "/" -f 2 | sort | uniq -c | sort -n
sudo du -h --max-depth=0

# Clean a little bit 
sudo apt-get clean
sudo apt autoremove --purge # clean old cores

# Change user
su - needed_user
su - # change to root

# Find something
find . -name '*.stuff.sh'