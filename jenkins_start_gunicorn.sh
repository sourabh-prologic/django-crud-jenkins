#!/bin/bash
set -e  # Exit on any error

# Activate virtual environment
if [ -d ".venv" ]; then
    source .venv/bin/activate
else
    echo "Error: Virtual environment (.venv) not found!"
    exit 1
fi

# Start Gunicorn with 3 workers
gunicorn --workers 3 --bind 0.0.0.0:8000 crud.wsgi:application > logs/gunicorn.log 2>&1 &


echo "Gunicorn started successfully!"