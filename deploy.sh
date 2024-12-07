#!/bin/bash
echo "Starting deployment..."
sudo su
cp -r * /var/www/html/
echo "Deployment successful!"
