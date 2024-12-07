# Use an official PHP image with Apache
FROM php:8.1-apache

# Install dependencies and enable mysqli extension
RUN apt-get update && apt-get install -y libmariadb-dev && docker-php-ext-install mysqli

# Copy application files to the web root
COPY . /var/www/html

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 8081
