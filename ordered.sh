
start=$1
end=$2
from=$3

count=1

file_count=$(ls -1 $start | wc -l)

for count in $(seq ${count} $file_count); do

file=$(ls -1 $start | sed -n "${count}p")

echo $file copied from $start to $end as $from

cp $start/$file $end/${from}.png
((from++))
((count++))

done
