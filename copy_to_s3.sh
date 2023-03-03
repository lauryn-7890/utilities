#!/bin/bash

set -e

function copy_files_to_s3 {
    local local_folder=$1
    local s3_uri=$2
    echo "Uploading json files under $local_folder"
    aws s3 cp --recursive --exclude "*" --include "*.json" $local_folder $s3_uri/$local_folder
}

copy_files_to_s3 $1 $2