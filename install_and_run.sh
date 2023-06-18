#!/bin/bash

echo "Running run_and_install.sh"

echo "Checking if python3, pip3 and virtualenv is installed"

#check if python3, pip3 and virtualenv are installed
if ! [ -x "$(command -v python3)" ]; then
  echo 'Error: python3 is not installed.' >&2
  exit 1
fi

# check if pip3 is installed
if ! [ -x "$(command -v pip3)" ]; then
  echo 'Error: pip3 is not installed.' >&2
  exit 1
fi

# check if virtualenv is installed
if ! [ -x "$(command -v virtualenv)" ]; then
  echo 'Error: virtualenv is not installed.' >&2
  exit 1
fi

echo "Creating virtualenv and installing requirements"

# create virtualenv
virtualenv -p python3 venv

# activate virtualenv
source venv/bin/activate

# install requirements
pip3 install -r requirements.txt

# running jupyter notebook
jupyter-lab main.ipynb
