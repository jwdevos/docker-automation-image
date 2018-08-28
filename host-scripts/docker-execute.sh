#!/bin/bash

# Put original (pre-sudo) username into the var USRNAME
USRNAME=$(who am i | awk '{print $1}')

# Get the UID for the original user and store it in USRID
USRID=$(id -u $USRNAME)

# Put the container image name in a variable
CONTAINER="automator"

# This runs the container..
# ..executes the command provided as an argument to $1..
# ..and removes the container again
docker run \
        --rm \
        -v /etc/passwd:/etc/passwd:ro \
        -v /home/$USRNAME/docker:/projects:ro \
        -v /home/$USRNAME/.ansible:/home/$USRNAME/.ansible \
        --name $USRNAME-container \
        -it \
        -u $USRID \
        $CONTAINER \
        $1
