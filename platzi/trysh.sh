#!/bin/bash

NEW_DIR=platzi
if [ ! -d "`pwd`/$NEW_DIR" ]; then
	mkdir `pwd`/$NEW_DIR
fi

cp trysh.sh `pwd`/$NEW_DIR
echo "`date`. Todo listo"
