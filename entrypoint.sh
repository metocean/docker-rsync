#!/bin/sh
echo 'starting...'

if [ $# -eq 1 ]; then
  interval=$1
elif [ ${POLLING_INTERVAL} ]; then
  interval=${POLLING_INTERVAL}
else
  interval=30
fi

echo "polling interval: $interval seconds"
while :
do
  /usr/bin/rsync -av --delete --ignore-existing /data_src/ /data_dest/
  sleep $interval
done
