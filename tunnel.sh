#!/data/data/com.termux/files/usr/bin/bash

while true; do
  echo "[$(date '+%H:%M:%S')] Запускаю туннель localhost.run..."
  ssh -o ServerAliveInterval=20 -o ExitOnForwardFailure=yes -i ~/.ssh/localhost_run_key -R 80:localhost:3000 laenfaer@localhost.run
  echo "[$(date '+%H:%M:%S')] Туннель упал, переподключаюсь через 5 сек..."
  sleep 5
done
