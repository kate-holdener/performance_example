#!/bin/bash
# set the time format to display real_time,user_time,system_time
TIMEFORMAT=%R,%U,%S
#arguments to pass to the Fib calculator
n=(1 10 20 30 40)
scriptToTest=$1
outputFile=$2

for i in ${n[@]}
do
   # repeat the experiment this many times
   num_samples=10
   while [[ $num_samples -gt 0 ]]
   do
      run_time=$( (time python3 $scriptToTest ${i} > /dev/null) 2>&1)
      echo $run_time
      # record the timing results to the output file
      echo "$i,$run_time" >> $outputFile
      echo $run_time
      num_samples=($num_samples-1)
   done
done
