#!/usr/bin/env bash

BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
NORMAL="\033[0;39m"


export TERM=linux

cat << "EOF"
                       .
                        `:.
                          `:.
                  .:'     ,::
                 .:'      ;:'
                 ::      ;:'
                  :    .:'
                   `.  :.
          _________________________
         :                         :
     ,---:      ml2wt0n.Coffee     :
    : ,'"`:    Put your feet up   :'
    `.`.  `:     I got this!     :'
      `.`-._:                   :
        `-.__`.               ,' 
    ,--------`"`-------------'--------.
     `"--.__                   __.--"'
            `""-------------""'
EOF

#set the log output file
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>log.out 2>&1
# Everything below will go to the file '/var/log/kali-install.log':

#update server 
printf "\n $BLUE updating server \n"
apt update && apt upgrade -y

sleep 2.0

#NMAP
printf "\n $BLUE installing nmap \n"
apt install nmap -y

sleep 2.0

#NETCAT
printf "\n $BLUE installing netcat \n"
apt install netcat -y

sleep 2.0

#WPSCAN
printf "\n $BLUE installing wpscan  \n"
apt install wpscan -y 

sleep 1.0

#ENUM4LINUX
printf "\n $BLUE installing enum4linux \n"
apt install enum4linux -y 

sleep 1.0

