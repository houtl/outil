# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    cplft.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thou <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/03/27 10:50:02 by thou              #+#    #+#              #
#    Updated: 2017/06/19 18:10:51 by thou             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

if [ ! -d ~/libft ]; then
	git clone https://github.com/houtl/libft.git ~/libft
fi

if [ $HOME = $(pwd) ]; then
	echo "libft se trouve ici"
else
	if [ -z "$1" ]; then
		PATH_LIBFT=$(pwd)
		echo "没有参数，拷贝libft到当前文件夹"
		rm -rf libft
		cp -R ~/libft ./
	else
		PATH_LIBFT=$(pwd)$1
		echo "拷贝libft到$1文件夹"
		rm -rf $1/libft
		cp -R ~/libft $1
	fi
	rm -rf $PATH_LIBFT/libft/.git
	rm -rf $PATH_LIBFT/libft/.travis.yml
	rm -rf $PATH_LIBFT/libft/auteur
fi
