#!/bin/bash

# Put original (pre-sudo) username into the var USRNAME
USRNAME=$(who am i | awk '{print $1}')

# Get the UID for the original user and store it in USRID
USRID=$(id -u $USRNAME)

# Put the container image name in a variable
CONTAINER="automator"

# Connect to the container
docker run \
        -v /etc/passwd:/etc/passwd:ro \
        -v /home/$USRNAME/docker:/projects:ro \
        -v /home/$USRNAME/.ansible:/home/$USRNAME/.ansible \
        --name $USRNAME-container \
        -dit \
        -u $USRID \
        $CONTAINER
