#!/bin/sh
echo 'starting...'
while :
do
  /usr/bin/rsync -av --delete /data_src/ /data_dest/
  sleep 10
done
