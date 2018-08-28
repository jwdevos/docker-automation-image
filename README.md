# docker-automation-image

Instructions and files that can be used to create and use a Docker container. The instructions are written assuming a Debian host environment for the Docker container. 

## Host system
The host system needs to have a few things set up. Docker should be installed, of course, but it is also recommended to use a Git repository, so a git client is needed as well.

Follow these instructions to install Docker CE on Debian: https://docs.docker.com/install/linux/docker-ce/debian/  
After the install, verify that the Docker installation is working properly by running this command:
~~~
docker run hello-world
~~~

Next, install Git:
~~~
apt install git
~~~


## Container
The container uses the latest standard Python image from Docker Hub (library/python). This gives us a Python3 environment to use. 

watch the dot:
~~~
docker build -f ./Dockerfile -t automator .
docker image
docker image rm <image ID>
~~~


Docker build command reference: https://docs.docker.com/engine/reference/commandline/build/
Docker build instructions: https://docs.docker.com/engine/reference/builder/

Run the image:
~~~
docker run -dit --name automator_container automator
docker container ls
docker exec -it <container_name> /bin/bash
pip list
ansible --version
~~~
