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

### Building the container
This command builds the container. Make sure to include the dot at the end:
~~~
docker build -f ./Dockerfile -t automator .

~~~

### Some more helpful commands
List local Docker images
~~~
docker image ls
docker image rm <image ID>
~~~

Remove local Docker image
~~~
docker image rmi <image ID>
~~~

### Some more Docker build resources
Docker build command reference: https://docs.docker.com/engine/reference/commandline/build/
Docker build instructions: https://docs.docker.com/engine/reference/builder/

### Example commands for running and using the image
Start a new container running the new image
~~~
docker run -dit --name automator_container automator
~~~

List the running containers
~~~
docker ps -a
~~~

Connect to a running container
~~~
docker exec -it <container_name> /bin/bash
~~~
