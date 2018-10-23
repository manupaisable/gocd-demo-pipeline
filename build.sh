#!/bin/bash
duration=10

echo "Let us pretend that this is building something ... and takes $duration seconds"

count=0
while [ "$count" -lt "$duration" ]; do
    count=$((count + 1))

    color_code=$((31 + (count % 7)))
    printf "\e[01;${color_code}mBuilding [$count of $duration]\e[00m\n"
done
