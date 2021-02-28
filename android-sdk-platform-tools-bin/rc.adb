#!/bin/sh
#
# /etc/rc.d/adb: start/stop adb daemon
#

case $1 in
start)
	/usr/share/android-sdk/platform-tools/adb start-server
	;;
stop)
	/usr/share/android-sdk/platform-tools/adb kill-server
	;;
restart)
	$0 stop
	sleep 2
	$0 start
	;;
*)
	echo "usage: $0 [start|stop|restart]"
	;;
esac

# End of file
