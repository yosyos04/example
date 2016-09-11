FROM ubuntu:16.10

SHELL ["/bin/bash", "-c"]

# Define run directory and copy the source files
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

# Install python, pip, and pytest
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y python python-dev python-pip && \
    pip install pytest

# Define cmd
CMD ["/bin/bash"]
