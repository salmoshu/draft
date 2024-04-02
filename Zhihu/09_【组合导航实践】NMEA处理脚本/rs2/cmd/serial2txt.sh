#!/bin/bash

echo "shell running..." &

# 串口数据存储
stty -F /dev/ttyUSB0 ispeed 115200 ospeed 115200 cs8 &
cat /dev/ttyUSB0 > ./serial.txt &

# 工作计时
start_time=$(date +%s)
while true
do
    clear
    cur_time=$(date +%s)
    cost_time=$[ $cur_time-$start_time ]
	echo  -e "shell running...\n"
    echo "运行时间: $(($cost_time/60))min $(($cost_time%60))s"
	sleep 1
done
