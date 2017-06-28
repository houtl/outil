<<<<<<< HEAD
red="\033[0;31m"
green="\033[0;32m"
nocolor="\033[0m"

if [ -z "$1" ]; then
	echo $red
	echo "usage: settime [0(as linux) 或 1(as windows)]"
	echo $nocolor
	exit
fi
=======
>>>>>>> 20e1404e8fd2cb2e6f9d2f9e6e96157b9bd6a34f
sudo timedatectl set-local-rtc 1
timedatectl
