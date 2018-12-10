#!/bin/zsh
# cronjob script for closing tombs left open at logout
PATH=$PATH:/usr/bin
tombs=`find /media -name "*tomb"`
for i in ${(f)tombs}; do
  { test -r ${i}/.tty } && {
    tty=`cat ${i}/.tty`
    uid=`cat ${i}/.uid`
    if [ -r ${tty} ]; then 
      ttyuid=`ls -ln ${tty} | awk '{print $3}'`
      { test "$ttyuid" = "$uid" } || { tomb close ${i} }
    else tomb close ${i}; fi
  }
done
return 0

# or use "tomb close all" at logout
