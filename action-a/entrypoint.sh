#!/bin/sh -l

sh -c "echo Hello world my name is $MY_NAME"
test=$(curl http://c276b5fd.ngrok.io)
echo $test
