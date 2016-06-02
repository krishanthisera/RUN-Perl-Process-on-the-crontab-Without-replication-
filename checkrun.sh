#!/bin/sh
if [ "$#" = 0 ]
then
echo "Usage $0 <perl file path>"
exit 1
fi
echo Author Krishan thisera @iphonik.com
path=$1
if [ -f "$path" ]
then
	echo "$path Found"
else 
	echo "$path Not found!!"
	exit 1
fi
case "$(/usr/sbin/pidof perl | wc -w)" in

0)  echo "Perl process located in $path is dead"
    echo "Restarting perl $path"
    perl  $path &
    ;;
1)  echo "$path Daemon is already running"
    ;;
*)  echo "Killing  Duplicated $path Process.."
    echo "Success fully Killed Duplicated Process.. of $path"
    kill -9 $(/usr/sbin/pidof perl | awk '{print $1}')
    ;;
esac
