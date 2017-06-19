# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    cpmlx.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thou <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/05 15:04:17 by thou              #+#    #+#              #
#    Updated: 2017/05/18 16:48:58 by thou             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

if [ $1 != "e1" -a $1 != "e2" -a $1 != "e3" ]; then
	echo "sh cpmlx.sh [e1 || e2 || e3] [DST_PAST]"
else
	DST_PATH=$2
	E=$1
	if [ -z "$DST_PATH" ]; then
		DST_PATH=minilibx
	fi
	rm -rf $DST_PATH
	mkdir $DST_PATH
	cp -R /Users/thou/Downloads/minilibx_$E/ ./$DST_PATH
fi
