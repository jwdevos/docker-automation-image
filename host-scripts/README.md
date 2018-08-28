# host-scripts
The files in this directory can be used to provide secure access to Docker containers

An example for /etc/sudoers looks like the following (providing access to a Linux system group named docker-users):
~~~
%docker-users   ALL=(ALL)       NOPASSWD: /usr/bin/docker-start
%docker-users   ALL=(ALL)       NOPASSWD: /usr/bin/docker-connect
%docker-users   ALL=(ALL)       NOPASSWD: /usr/bin/docker-stop
%docker-users   ALL=(ALL)       NOPASSWD: /usr/bin/docker-execute
%docker-users   ALL=(ALL)       NOPASSWD: /usr/bin/docker-info
~~~

Working with this solution requires the following directories to be present, with proper permissions set.
The easiest solution is to have the end user create these directories. They are allowed to be empty but need to exist.
The .ansible directory needs to exist because Ansible will throw exceptions otherwise.
The docker directory gets mounted into /projects in the container and gives a place to store scripts to be executed.
~~~
~/docker
~/.ansible
~~~
