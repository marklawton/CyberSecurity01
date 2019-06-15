from __future__ import print_function
from netmiko import ConnectHandler

import sys
import time
import select
import paramiko
import re
import datetime

today = str(datetime.date.today())

fd = open(r'/home/NewdayTest.txt','w') # Where you want the file to save to.
old_stdout = sys.stdout
sys.stdout = fd
platform = 'cisco_asa'
username = 'cisco' # edit to reflect
password = 'cisco' # edit to reflect
secret = ' '

ip_add_file = open(r'/home/IPAddressList.txt','r') # a simple list of IP addresses you want to connect to each one on a new line

#try:

for host in ip_add_file:
    host,secrt = host.split(',')
    host = host.strip()
    secrt = secrt.strip()
    if secrt =="A":
       secret = 'A1m3s;2007'
    else:
       secret =''
    reason2 = ''
    print(host, ' ',secret,'first pass ', today, '\n')
    try:
       device = ConnectHandler(device_type=platform, ip=host, username=username, password=password, secret=secret)
       #print(host, 'second pass\n')
       if reason2 == '':
        filename = '/home/S' + host + '_' + today + '.txt'
        output = device.send_command('terminal length 0')
        output = device.send_command('enable') #Editable to be what ever is needed
        file3 = open(filename,'w')
        file3.write('##############################################################\n')
        file3.write('...................CISCO COMMAND SHOW RUN OUTPUT ' + host + ' ' + today +' ......................\n')
        output = device.send_command('sh run')
        file3.write(output)
        file3.write('########################' + host + '######################################\n')
        print("#### wrote data for ",  host, ' to ', filename,'\n')
        file3.close()
    except Exception as e:
           reason = e.message
           reason2 = ValueError('Username & Password  incorrect...', host, reason)
           print(reason2,'\n')
    continue
    
fd.close()
