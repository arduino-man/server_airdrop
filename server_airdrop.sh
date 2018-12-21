# This is intended to work on GNU/Linux systems.
# 1- Create a folder named server_airdrop anywhere you want.
# 2- Place the files you want to airdrop inside the server_airdrop folder.
# 3- Run this script once you have entered the correct values for MYUSER and MYSERVER.

# Change the port number if need be
PORT=22

# Enter the user and hostname to establish server connection
MYUSER=user
MYSERVER=yourserver.com

# Magic happens here (Normally you shouldn't need to touch this)
scp -P $PORT -r $(find ~/. -type d -name "server_airdrop") $MYUSER@$MYSERVER:~
