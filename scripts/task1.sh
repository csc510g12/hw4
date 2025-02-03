sh infinite.sh
pid=$(ps aux | grep infinite.sh | grep -v grep | awk '{print $2}')
echo "pid of infinite.sh: $pid, killing it after 5 seconds"
sleep 5
kill -9 $pid