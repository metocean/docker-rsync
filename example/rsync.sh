#!/bin/sh
while :
do
  rsync -av --delete /data_src/ /data_dest/
  sleep 10
done
