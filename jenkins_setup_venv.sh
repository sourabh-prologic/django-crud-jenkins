#!/bin/bash
set -e  # Exit immediately if a command fails

# Check if virtual environment exists
if [ -d ".venv" ]; then
    echo ".venv exists"
else
    python3.10 -m venv .venv
fi

# Print current directory
echo "Current Directory: $PWD"

# Activate virtual environment
source "$PWD/.venv/bin/activate"

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Check if logs directory exists
if [ -d "logs" ]; then
    echo "Log Directory Exists"
else
    mkdir logs
    touch logs/access.log logs/gunicorn.log
fi

# Change permissions for logs
sudo chmod -R 777 logs

echo "Environment Setup Completed!"
