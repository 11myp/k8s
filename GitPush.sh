#!/usr/bin/sh
echo "Add code  to the Stage"
echo "The current directory is `pwd`"
git add *

echo ""

echo "Commit the changes to the local repository!"
git commit -m "`date`"

echo "Commit the changes to the remote git server"
git push  origin master

if [ $? -eq 0 ];then
	echo "SUCESS!"
else
	echo "failed!"
fi
