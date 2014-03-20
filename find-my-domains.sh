#!/bin/bash

for i in `grep '^[a-z]\{1,4\}my$' /usr/share/dict/words`; do

    OUTPUT=`whois ${i%??}.my | grep "does not exist"`
    if [ $? -eq 0 ]; then echo "${i%??}.my"; fi;

done
