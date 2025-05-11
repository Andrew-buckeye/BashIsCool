#!/bin/bash

progress=""
for i in {1..50}; do
    progress="${progress}="
    printf "\r[%-50s]" "$progress"
    sleep 0.05
done
echo -e "\nDone!"