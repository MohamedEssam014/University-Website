# Use official PHP image with Apache
FROM php:8.2-apache

# Set working directory inside the container
WORKDIR /var/www/html

# Copy all project files into the container
COPY . /var/www/html

# Enable Apache mod_rewrite (optional but often useful)
RUN a2enmod rewrite

# Expose port 80 for web traffic
EXPOSE 80

# Start Apache automatically
CMD ["apache2-foreground"]
