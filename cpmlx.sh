#!/bin/sh
rm -rf minilibx
mkdir minilibx
if [ $1="unix" ]; then
	cp -R ~/minilibx11/* ./minilibx
elif [ $1="linux" ];then
	cp -R ~/minilibx/* ./minilibx
fi
