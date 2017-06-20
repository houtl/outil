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

if [ /home/thou = $(pwd) ]; then
	echo "libft se trouve ici"
else
	if [ -z "$1" ]; then
		echo "没有参数，拷贝libft到当前文件夹"
		rm -rf libft
		cp -R ~/libft ./
	else
		echo "拷贝libft到$1文件夹"
		rm -rf $1/libft
		cp -R ~/libft $1

fi
rm -rf $1libft/.git
rm $1libft/.travis.yml
rm $1libft/auteur
