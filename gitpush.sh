# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    gitpush.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thou <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/03/02 16:25:43 by thou              #+#    #+#              #
#    Updated: 2017/06/19 18:00:18 by thou             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
GIT_DIR=$(git rev-parse --git-dir | sed 's/.git$//')
if [ -z $GIT_DIR ]; then
	GIT_DIR=./
fi
if [ -f $GIT_DIR\makefile ]; then
	make -C $GIT_DIR fclean
fi
git add -A
MESSAGE=$1
if [ -z $MESSAGE ]; then
	MESSAGE=$(date)
fi
echo $MESSAGE
git commit -m "$MESSAGE"
git push
