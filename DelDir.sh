#!/bin/bash

read -p "Введите путь: " Dir

if [ -e "Dir" ]
        then
                cd $Dir
                rm -v *.bak
                rm -v *.tmp
                rm -v *.backup
        else
                echo 'Указанная дирректория не найдена'
                exit
fi
