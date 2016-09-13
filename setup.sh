#!/bin/bash

# install python, pip, and virtualenv
sudo apt-get update  -y
sudo apt-get upgrade -y
sudo apt-get install -y python python-dev python-pip
sudo pip install --upgrade pip virtualenv

# create virtual environment with dependencies
virtualenv --prompt="\[\033[36m\]\$(basename \$(dirname \$VIRTUAL_ENV)) \[\033[0m\]" .venv
.venv/bin/pip install pytest
find -name 'site-packages' -exec bash -c 'echo $(realpath --relative-to={} .) > {}/self.pth' \;
