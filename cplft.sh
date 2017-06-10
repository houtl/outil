#!/bin/sh

if [ ! -d ~/libft ]; then
	git clone https://github.com/houtl/libft.git ~/libft
fi

if [ /home/thou = $(pwd) ]; then
	echo "libft se trouve ici"
else
	rm -rf libft
	mkdir libft
	cp -R ~/libft/* ./libft/
fi
