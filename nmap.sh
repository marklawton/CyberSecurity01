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
     ,---:      pwndbyb00ba.com     :
    : ,'"`:    Put your feet up   :'
    `.`.  `:     I got this!     :'
      `.`-._:                   :
        `-.__`.               ,' 
    ,--------`"`-------------'--------.
     `"--.__                   __.--"'
            `""-------------""'
EOF

nmap -p- -Pn -A -sC -oX 10-2-11-0-24.xml 10.2.11.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-2-12-0-24.xml 10.2.12.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-2-13-0-24.xml 10.2.13.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-2-16-0-24.xml 10.2.16.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-2-31-0-24.xml 10.2.31.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-2-36-0-24.xml 10.2.36.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-2-56-0-24.xml 10.2.56.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-2-81-0-24.xml 10.2.81.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-2-86-0-24.xml 10.2.86.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-2-96-0-24.xml 10.2.96.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-3-1-0-24.xml 10.3.1.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-3-8-0-24.xml 10.3.8.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-3-65-0-24.xml 10.3.65.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-6-8-0-24.xml 10.6.8.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-11-18-0-24.xml 10.11.18.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-100-1-0-24.xml 10.100.1.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-100.29-0-24.xml 10.100.29.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-100-36-0-24.xml 10.100.36.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-100-38-0-24.xml 10.100.38.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 10-100-39-0-24.xml 10.100.39.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 172-16-0-0-24.xml 172.16.0.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-4-0-24.xml 192.168.4.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-7-0-24.xml 192.168.7.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-35-0-24.xml 192.168.35.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-37-0-24.xml 192.168.37.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-38-0-24.xml 192.168.38.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-66-0-24.xml 192.168.66.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-70-0-24.xml 192.168.70.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-72-0-24.xml 192.168.72.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-73-0-24.xml 192.168.73.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-150-0-24.xml 192.168.150.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-213-0-24.xml 192.168.213.0/24

sleep 1.0

nmap -p- -Pn -A -sC -oX 192-168-216-0-24.xml 192.168.216.0/24

sleep 1.0

