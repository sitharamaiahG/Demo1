#!/bin/bash
echo -e "\033[36mcreating a parent and child directories\033[0m"
mkdir -p test/mydir
echo -e "\033[31mchanging a directory \033[0m"
cd test
echo -e "\033[33mlisting a directory files\033[0m"
ls -l
echo -e "\033[35mrenaming a directory\033[0m"
mv mydir yourdir
echo -e "\033[36mlisting a directory files\033[0m"
ls -l
echo -e "\033[33mcreation of a file \033[0m"
vi sample.doc
echo -e "\033[32mdisplay content of a file \033[0m"
cat sample.doc
echo -e "\033[31mdisplay file content with line number\033[0m"
cat -b sample.doc
echo -e "\033[35mcounting words of a file\033[0m"
wc sample.doc
echo -e "\033[33mlisting files with meta characters \033[0m"
ls *.doc
echo -e "\033[35mediting of a file \033[0m"
vi sample.doc
echo -e "\033[32mdisplay content of a file \033[0m"
cat sample.doc
echo -e "\033[31mdisplay file content with line number\033[0m"
cat -b sample.doc
echo -e "\033[34mcopying file\033[0m"
cp sample.doc demo.doc
echo -e "\033[31mlisting of a files \033[0m"
ls -l
echo -e "\033[32mrenaming file\033[0m"
mv demo.doc newdemo.doc 
echo -e "\033[35mlisting of a files \033[0m"
ls -l
echo -e "\033[33mchanging file permissions in symbolic mode\033[0m"
echo -e "\033[32madd the designated permissions from a file or directory of others\033[0m"
chmod o+wx newdemo.doc
echo -e "\033[35mlisting of a files \033[0m"
ls -l
echo -e "\033[31mremove the designated permissions from a file or directory of user\033[0m"
chmod u-x sample.doc
echo -e "\033[35mlisting of a files \033[0m"
ls -l
echo -e "\033[34msets the designated permissions to a file or directory of group\033[0m"
chmod g=rx yourdir
echo -e "\033[35mlisting of a files \033[0m"
ls -l
echo -e "\033[33mchanging file permissions in absolute mode\033[0m"
echo -e "\033[32mchanging file permissions of a file\033[0m"
chmod 777 newdemo.doc sample.doc
echo -e "\033[31mlisting of a files \033[0m"
ls -l
echo -e "\033[35mchanging file permissions of a directory\033[0m"
chmod 777 yourdir
echo -e "\033[34mlisting of a files \033[0m"
ls -l
echo -e "\033[33mrunning a process in the foreground\033[0m"
sleep 10
echo -e "\033[32mrunning a process in the background\033[0m"
sleep 50 &
sleep 50 &
sleep 50 &
sleep 50 &
echo -e "\033[31mlisting running processes in the background with ps\033[0m"
ps
echo -e "\033[35mlisting running processes in the background with jobs\033[0m"
jobs
echo -e "\033[32mterminating processes\033[0m"
kill -9 %1 %2
echo -e "\033[33mlisting running processes ids\033[0m"
jobs -p
echo -e "\033[34mlisting current running processes along with pids\033[0m"
jobs -l
echo -e "\033[31mlisting current running processes\033[0m"
jobs -r
echo -e "\033[35mrunning processes in the background\033[0m"
sleep 50 &
echo -e "\033[31mchanging process state from background to foreground\033[0m"
fg %1

echo -e "\033[31mdeleting a file\033[0m"
rm newdemo.doc
echo -e "\033[33mlisting of a files \033[0m"
ls -l
echo -e "\033[34mremoving a directory\033[0m"
rmdir yourdir
echo -e "\033[35mlisting of a files \033[0m"
ls -l
