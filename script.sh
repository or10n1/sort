#!/bin/bash

echo "write extension for sorting"

read ext;

old_list=$(find . -name "*$ext")


for i in $old_list
do
	mv $i $(openssl rand -hex 10).jpg
done

echo "hash is alright"

itr=1

old_list=$(find . -name "*$ext")

for i in $old_list
do
        mv $i $itr.jpg
	((itr++))
done
