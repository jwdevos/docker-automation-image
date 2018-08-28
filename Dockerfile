# Use an official Python runtime as a parent image
FROM library/python

# Set the working directory to /install
WORKDIR /install

# Copy the current directory contents into the container at /install
ADD . /install

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Set new default WORKDIR
WORKDIR /projects
