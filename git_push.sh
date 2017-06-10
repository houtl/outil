#!/bin/sh
cpmlx unix
make fclean
git add -A
git commit -m "$1"
git push
