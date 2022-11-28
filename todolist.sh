#!/usr/bin/env bash
 
# A simple todolist generator in bash
# Created by ferik
date_now=$(date +'%d-%m-%Y')
file_path="${HOME}/Todolist/todolist-${date_now}.txt"
file_path_todolist="${HOME}/Todolist"

# Detect if folder Todolist exist
if [ -d $file_path_todolist ]
then
	echo "[LOG] Folder exist"
else
	echo "[LOG] Folder not exist"
	mkdir $file_path_todolist
fi

# Detect & Create todolist
if [ -f $file_path ]
then
	echo "[LOG] Exist opening micro"
	micro $file_path
else
	echo "[LOG] Creating new ${file_path}"
	touch $file_path

	echo -e "Todolist (${date_now}) : " > $file_path
	for (( i=1; i<=5; i++ ))
	do
		echo -e "\t- [] " >> $file_path
	done

	micro $file_path
fi
