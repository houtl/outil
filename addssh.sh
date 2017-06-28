#添加新的可用ssh

red="\033[0;31m"
green="\033[0;32m"
nocolor="\033[0m"

usage() {
	echo "$green Usage: addssh [User mail] [key文件名(prive, new, 等)]$nocolor"
	exit
}

if [ $# != 2 ]; then
	usage
fi

if [ -e "$HOME/.ssh/id_rsa_$2" ]; then
	echo "$green ERROR: file ~/.ssh/id_rsa_$2 already exists.$nocolor"
	exit
fi

echo "$HOME/.ssh/id_rsa_$2" | ssh-keygen -P "" -t rsa -C $1

if [ ! $? ]; then
	exit
fi

if [ $SESSION="ubuntu" ]; then
	cat $HOME/.ssh/id_rsa_prive.pub | xclip -selection clipboard
fi

rm -rf ~/.ssh/config
echo "# default
Host github.com
HostName github.com
User git
IdentityFile ~/.ssh/id_rsa
# two
Host gp.github.com
HostName github.com
User git
IdentityFile ~/.ssh/id_rsa_prive" >> ~/.ssh/config
