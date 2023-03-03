#!/bin/bash

for folder in ./*
do  
	mkdir $folder/draft
	test $? -ne 0 && echo "ERROR: mkdir draft for $folder. Exiting." && exit 100
	mkdir $folder/finalproject
	test $? -ne 0 && echo "ERROR: mkdir finalproject for $folder. Exiting." && exit 100
done
