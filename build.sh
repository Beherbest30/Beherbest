#!/usr/bin/env bash
# exit on error
set -o errexit

# Install FFmpeg
apt-get update && apt-get install -y ffmpeg

# Install Python dependencies
pip install -r requirements.txt

# Navigate to the Django project directory
cd Website/myproject

# Collect static files
python manage.py collectstatic --no-input

# Apply migrations
python manage.py migrate
