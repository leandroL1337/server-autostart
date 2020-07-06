#!/bin/sh

#Refer to README.md on how to edit the script to your needs.

srv_dir=/path/to/your/directory

srv_name=server

srv_mem=X 


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
