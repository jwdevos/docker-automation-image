#!/bin/bash

# Put original (pre-sudo) username into the var USRNAME
USRNAME=$(who am i | awk '{print $1}')

# Get the UID for the original user and store it in USRID
USRID=$(id -u $USRNAME)

# Put the container image name in a variable
CONTAINER="automator"

# Run the container
docker exec \
        -it \
        $USRNAME-container \
        /bin/bash
