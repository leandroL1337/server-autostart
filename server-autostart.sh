# developed by brxnter, distributed for use, not allowed to reupload the code to any website and claim it as your work.
# all rights reserved, under MIT license.


#!/bin/sh

#vars - server names. change them to your directories, make sure to add the directory tree, sh doesn't support logical paths to run things on where the script is located.
srv_dir=/path/to/your/directory

#screen-names - use server or whichever name you decide to use, make sure to change them on line 23.
srv_name=server

#allocated ram for the servers // optimize it on the VPS memory, spread it evenly for smoothness on all of them. (remove # if you need it for your autostarter.)
#srv_mem=X #read the documentation of the provider if you need help on memory writing, if it's required on MB or GB. if not needed, delete this part.

#change anything if needed (recommended to change the executable to anything else(depends on how much servers you want to run on the network.)so it doesn't interfere with other screens.)
#also you can change commands, start), stop), reload), restart), info) to your liking, or their removal. don't forget to add $name_of_your_screen if you are trying to add a new server.
#examples: cd $srv_dir && screen -AmdS $name_of_your_screen / arguments (refer to line 8 to find your server directories, line 11 to find your screen names, line 14 to find memory allocation sizes.)
name=`basename "$0"`
case "$1" in
start)

    cd $srv_dir && screen -AmdS $srv_name (arguments go here, remove the brackets.)

	sleep 1
	echo -e "\e[1;5mServer/s initiated for startup, give it/them a minute to properly start.\e[0m"
	;;
stop)
	screen -XS $srv_name -p 0 quit
	sleep 1
	echo -e "\e[1;5mServer/s were stopped as requested.\e[0m"
	;;

restart)
	screen -XS $srv_name -p 0 quit
	cd $srv_dir && screen -AmdS $name_of_your_screen (arguments)
	echo -e "\e[1;5mServer/s is/are being restarted, please wait.\e[0m"
	;;
*)
	echo "Usage: './$name (start|stop|restart)'"
	;;
esac
exit 0
