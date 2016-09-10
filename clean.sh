#!/bin/bash

rm -rf *.egg-info
find -not -path '*/.venv/*' -name '*.pyc'       -exec rm -rf {} \;
find -not -path '*/.venv/*' -name '__pycache__' -exec rm -rf {} \;
