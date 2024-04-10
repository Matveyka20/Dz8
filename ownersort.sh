#!/bin/bash
forall=/home/anastasia/Scripts
cd $forall
for file in $forall
 do
        if [ -d $file ]
          then
                continue
          fi
          if [ -e $file ]
          then
                owner='ls -l $file | grep "^-" | awk {'print $£3'}'
                $file=$owner*   
                cp $file $forall/$owner
                chown $owner $forall/$owner/$file
        fi
done
