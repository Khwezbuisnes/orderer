#!/bin/bash

#variable declaration
start=$1
end=$2
from=$3

count=1

#determin file quantity
file_count=$(ls -1 $start | wc -l)

#main loop
for count in $(seq ${count} $file_count); do

#determin file name
file=$(ls -1 $start | sed -n "${count}p")

#determin file type
ftype=${file##*.}

#declareing actions
echo cpoying $file from $start to $end as $from

#transfer
cp $start/$file $end/${from}.$ftype
((from++))
((count++))

done
