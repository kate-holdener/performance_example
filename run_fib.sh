#!/bin/bash
TIMEFORMAT=%R,%U,%S
n=(1 10 20 30 40)
scriptToTest=$1
outputFile=$2

for i in ${n[@]}
do
   num_samples=10
   while [[ $num_samples -gt 0 ]]
   do
      run_time=$( (time python3 $scriptToTest ${i} > /dev/null) 2>&1)
      echo $run_time
      echo "$i,$run_time" >> $outputFile
      echo $run_time
      num_samples=($num_samples-1)
   done
done
