#write a program to demonstrate unix commands related to files, directories, processes, find and cut commands. 
#!/bin/bash
select OPERATION in file dir process cut find terminate
do
	case $OPERATION in
   		file)
				echo -e "\033[36mcreating a directory\033[0m"
				mkdir mydir
				sleep 2
				echo -e "\033[31mchanging a directory \033[0m"
				cd mydir
				sleep 1
				echo -e "\033[33mcreation of a file \033[0m"
				vi sample.doc
				sleep 2
				echo -e "\033[32mdisplay content of a file \033[0m"
				cat sample.doc
				sleep 2
				echo -e "\033[31mdisplay file content with line number\033[0m"
				cat -b sample.doc
				sleep 2
				echo -e "\033[35mcounting words of a file\033[0m"
				wc sample.doc
				sleep 2
				echo -e "\033[33mlisting files with meta characters \033[0m"
				ls *.doc
				sleep 2
				echo -e "\033[35mediting of a file \033[0m"
				vi sample.doc
				sleep 2
				echo -e "\033[32mdisplay content of a file \033[0m"
				cat sample.doc
				sleep 2
				echo -e "\033[31mdisplay file content with line number\033[0m"
				cat -b sample.doc
				sleep 2
				echo -e "\033[34mcopying file\033[0m"
				cp sample.doc demo.doc
				sleep 2
				echo -e "\033[31mlisting of a files \033[0m"
				ls -l
				sleep 2
				echo -e "\033[32mrenaming file\033[0m"
				mv demo.doc newdemo.doc
				sleep 2 
				echo -e "\033[35mlisting of a files \033[0m"
				ls -l
				sleep 2
				echo -e "\033[33mchanging file permissions in symbolic mode\033[0m"
				echo -e "\033[32madd the designated permissions from a file or directory of others\033[0m"
				chmod o+wx newdemo.doc
				sleep 2
				echo -e "\033[35mlisting of a files \033[0m"
				ls -l
				sleep 2
				echo -e "\033[31mremove the designated permissions from a file of user\033[0m"
				chmod u-x sample.doc 
				sleep 2
				echo -e "\033[35mlisting of a files \033[0m"
				ls -l
				sleep 2
				echo -e "\033[34msets the designated permissions to a file of group\033[0m"
				chmod g=rx sample.doc
				sleep 2
				echo -e "\033[35mlisting of a files \033[0m"
				ls -l
				sleep 2
				echo -e "\033[33mchanging file permissions in absolute mode\033[0m"
				echo -e "\033[32mchanging file permissions of a file\033[0m"
				chmod 777 newdemo.doc sample.doc
				sleep 2
				echo -e "\033[31mlisting of a files \033[0m"
				ls -l
				sleep 2
				echo -e "\033[34mlisting of a files \033[0m"
				ls -l
				sleep 2
				echo -e "\033[31mdeleting a file\033[0m"
				rm newdemo.doc
				sleep 2
				echo -e "\033[35mlisting of a files \033[0m"
				ls -l
				sleep 2
				cd ..
				echo -e "\033[34mremoving a directory\033[0m"
				rm -R mydir
				;;
   			dir)
				echo -e "\033[36mcreating a parent and child directories\033[0m"
				mkdir -p test/mydir
				sleep 2
				echo -e "\033[31mchanging a directory \033[0m"
				cd test
				sleep 2
				echo -e "\033[33mlisting a directory files\033[0m"
				ls -l
				sleep 2
				echo -e "\033[35mrenaming a directory\033[0m"
				mv mydir yourdir
				sleep 2
				echo -e "\033[36mlisting a directory \033[0m"
				ls -l
				sleep 2
				echo -e "\033[35mchanging file permissions of a directory\033[0m"
				chmod 777 yourdir
				sleep 2
				echo -e "\033[36mlisting a directory\033[0m"
				ls -l	
				echo -e "\033[34mremoving a directory\033[0m"
				rmdir yourdir
				;;
   			process)
				echo -e "\033[33mrunning a process in the foreground\033[0m"
				sleep 5
				echo -e "\033[32mrunning a process in the background\033[0m"
				sleep 100 &
				sleep 101 &
				sleep 102 &
				sleep 103 &
				sleep 2
				echo -e "\033[31mlisting running processes in the background with ps\033[0m"
				ps
				sleep 2
				echo -e "\033[35mlisting running processes in the background with jobs\033[0m"
				jobs
				sleep 2
				echo -e "\033[32mterminating processes\033[0m"
				kill -9 %1 %2
				sleep 1
				echo -e "\033[33mlisting running processes ids\033[0m"
				jobs -p
				sleep 2
				echo -e "\033[34mlisting current running processes along with pids\033[0m"
				jobs -l
				sleep 2
				echo -e "\033[31mlisting current running processes\033[0m"
				jobs -r
				;;
			cut)
				echo -e "\033[36mcreating a file\033[0m"
				mkdir demodir
				cd demodir
				vi find_demo.txt
				sleep 2
				echo -e "\033[32mlisting a file\033[0m"
				cat find_demo.txt
				sleep 2
				echo -e "\033[31mdisplays 2nd character from each line of a file\033[0m"
				cut -c2 find_demo.txt
				sleep 2
				echo -e "\033[35mselect more than one character at a time from each line of a file\033[0m"
				cut -c2,5 find_demo.txt
				sleep 2
				echo -e "\033[34mprint a range of characters from every line by specifying the start and end position of the characters\033[0m"
				cut -c2-8 find_demo.txt
				sleep 2
				echo -e "\033[33mprint characters from specified start position to end of each line of a file\033[0m"
				cut -c2- find_demo.txt
				sleep 2
				echo -e "\033[36mprint characters from start to specified end position of each line of a file\033[0m"
				cut -c-8 find_demo.txt
				sleep 2
				echo -e "\033[32mdisplays 2nd field from each line of a file\033[0m"
				cut -d" " -f2 find_demo.txt
				sleep 2
				echo -e "\033[34mselect more than one field at a time from each line of a file\033[0m"
				cut -d" " -f2,4 find_demo.txt
				sleep 2
				echo -e "\033[31mprint a range of fields from every line by specifying the start and end position of the characters\033[0m"
				cut -d" " -f2-4 find_demo.txt
				sleep 2
				echo -e "\033[35mprint fields from specified start position to end of each line of a file\033[0m"
				cut -d" " -f2- find_demo.txt
				sleep 2
				echo -e "\033[36print fields from start to specified end position of each line of a file\033[0m"
				cut -d" " -f-3 find_demo.txt
				sleep 2 
				cd ..
				rm -R demodir
				;;
			find)
				cd responsive
				echo -e "\033[34mlist all files in current and sub directories\033[0m"
				find .
				sleep 2
				echo -e "\033[32mlist all files with .html extension of a current directory\033[0m"
				find . -type f -name "*.html"
				sleep 2
				echo -e "\033[31mlist all directories of a current working directory\033[0m"
				find . -type d -name "*"
				sleep 2
				echo -e "\033[36mlist all files with 777 permissions\033[0m"
				find . -type f -perm 777
				sleep 2
				echo -e "\033[35mlist all files which are not having 777 permissions\033[0m"
				find . -type f ! -perm 777
				sleep 2
				echo -e "\033[34mlist all files which are having less than 1MB\033[0m"
				find . -size -1M
				sleep 2

				;;	
			terminate)
				exit	
						
	esac
done		
