# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    settime.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thou <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/29 10:27:28 by thou              #+#    #+#              #
#    Updated: 2017/06/29 10:27:31 by thou             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#解决ubuntu和windows时间不同步问题
red="\033[0;31m"
green="\033[0;32m"
nocolor="\033[0m"

if [ -z "$1" ]; then
	echo $red
	echo "usage: settime [0(linux默认设置) 或 1(windows默认设置)]"
	echo $nocolor
	exit
fi

sudo timedatectl set-local-rtc 1
timedatectl
