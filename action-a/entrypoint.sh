#!/bin/sh -l

sh -c "echo Hello world my name is $MY_NAME"
which docker
docker ps
echo "\n\nIn the container"
whoami
ps aux
cat /etc/issue
echo "\n\nOn the host"
docker run --privileged --name dddd -d debian
docker ps
docker exec dddd "echo Hello from host"
docker exec dddd "whoami"
docker exec dddd "cat /etc/passwd"

