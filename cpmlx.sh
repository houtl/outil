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

MLX_MACOS="minilibx_macos"
MLX_X11="minilibx_x11"
TGZ_MACOS="minilibx_macos_sierra_20161017.tgz"
TGZ_X11="sources.tgz"
if [[ $1 != "linux" && $1 != "mac" && $1 != "unix" ]]; then
	echo "sh cpmlx.sh [linux || mac || unix] [DST_PAST]"
else
	DST_PATH=$2
	E=$1
	if [ -z "$DST_PATH" ]; then
		DST_PATH=minilibx
	fi
	if [ $E = "mac" -o $E = "unix" ]; then
		curl https://projects.intra.42.fr/uploads/document/document/356/$TGZ_MACOS -o ~/Downloads/$TGZ_MACOS
		tar -xvf ~/Downloads/$TGZ_MACOS
		mv $MLX_MACOS $DST_PATH
		rm ~/Downloads/$TGZ_MACOS
	fi
	if [ $E = "linux" ]; then
		curl https://projects.intra.42.fr/uploads/document/document/7/$TGZ_X11 -o ~/Downloads/$TGZ_X11
		tar -xvf ~/Downloads/$TGZ_X11
		mv $MLX_X11 $DST_PATH
		rm ~/Downloads/$TGZ_X11
	fi
fi
