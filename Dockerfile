FROM ubuntu:16.10

# install python, pip, and virtualenv
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y python python-dev python-pip && \
    pip install --upgrade pip virtualenv

# create virtual environment with dependencies
RUN virtualenv --prompt="\[\033[36m\]\$(basename \$(dirname \$VIRTUAL_ENV)) \[\033[0m\]" .venv &&
    .venv/bin/pip install pytest &&
    find -name 'site-packages' -exec bash -c 'echo $(realpath --relative-to={} .) > {}/self.pth' \;

CMD [ 'python', '-m', 'example' ]
