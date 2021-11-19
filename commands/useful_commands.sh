sudo ssh-copy-id -i ~/.ssh/id_rsa root@192.168.50.101

docker ps --quiet | xargs --max-args=1 -I{} docker exec {} cat /proc/1/status | grep '^Uid:' | awk '{print $3}'