#!/bin/bash

# Spinner lasts for 5 seconds, while loop redirects the stop singal to black hole

spin() {
    local pid=$1
    local delay=0.15
    local spinChars='|/-\'
    while kill -0 $pid 2>/dev/null; do
        for ((i=0; i<${#spinChars}; i++)); do
            printf "\r%c" "${spinChars:$i:1}"
            sleep $delay
        done
    done
  printf "\rDone!\n"
}

(sleep 5) &
spinner_pid=$!
spin "$spinner_pid"