#!/bin/bash

set -e

for folder in ./*
do
    if [[ -d ./$folder/draft && -d ./$folder/finalproject ]]
    then
        echo "Found $folder/draft and $folder/finalproject"
    else
        echo "Missing directory for $folder"
    fi
done

