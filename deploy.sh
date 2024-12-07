#!/bin/bash

# Variables
APP_DIR="/var/www/html"
TEMP_DIR="/tmp/app"

# Create temporary directory
mkdir -p $TEMP_DIR

# Copy files
cp -r * $TEMP_DIR

# Sync files to application directory
sudo rsync -av --delete $TEMP_DIR/ $APP_DIR/

# Restart Apache
sudo systemctl restart httpd

# Cleanup
rm -rf $TEMP_DIR
