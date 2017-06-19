#添加新的可用ssh

red="\033[0;31m"
green="\033[0;32m"
nocolor="\033[0m"
echo $HOME 
usage() {
	echo "$green usage: addssh [User mail] [key文件名(prive, new, 等)]$nocolor"
	exit
}
if [ $# != 2 ]; then
	usage
fi
echo "$HOME/.ssh/id_rsa_$2" | ssh-keygen -P passphrase -t rsa -C $1
