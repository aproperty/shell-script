#!/bin/bash

date_new=$(date -d today +"%Y-%m-%d_%H-%M-%S")





serverlog="/data/dir/logs/"

date_old=$(date -d "4 day ago" +"%Y-%m-%d")
logs="
common-error.log.${date_old}
egg-agent.log.${date_old}
egg-schedule.log.${date_old}
WTCPool-web.log.${date_old}
egg-web.log.${date_old}
"





i=0
n=1


for log in ${logs}; do

    if [ -f $serverlog${log} ]; then
        i=$(($i + $n))
        rm $serverlog${log}
        echo "$(date -d today +"%Y-%m-%d %H:%M:%S") : rm  $serverlog${log} "
    fi
    
    # filename=$(basename $i .out)
    # cp $i "$serverlog"/"$filename"_"$date_new.out" && >$i

done
echo "本次共清理：$i 个日志文件."
