#!/bin/bash

current_dir=$(pwd)
largest_file=$(find . -type f -exec du {} + | sort -n | tail -n 1 | cut -f2-)
echo "Largest file in $current_dir is $largest_file"
