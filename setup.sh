#!/bin/bash
cd "${0%/*}"  # Sets current directory to this script's directory
# For more info about the last line: http://stackoverflow.com/questions/3349105/how-to-set-current-working-directory-to-the-directory-of-the-script
docker build -t example .

