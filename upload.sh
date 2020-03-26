#!/bin/sh

echo "Please move the flies which you want to upload to the 'images' directory!"

echo "commit?(yes/no)"

read choice

if [ $choice = yes ] 
then
	cd ./images
	linkfile=~/Desktop/cdnlinks.txt
	str="![](https://cdn.jsdelivr.net/gh/danansheng/MyImage/PIC/"
	for file in `ls`
	do
		echo $str$file")" >> $linkfile
		mv ./$file ~/Desktop/MyImage/PIC
	done
	git status
	git add .
	git commit -m "upload by shell"
	git pull
	git push
fi
