#!/bin/bash
for homedir in /home/* ; do 
    if [ -d "$homedir" ] ; then
         cp $1 "$homedir"
         user=$(ls -ld $homedir | awk '{print $3}')
         chown --verbose $user:$user $homedir/$1
    fi
done
