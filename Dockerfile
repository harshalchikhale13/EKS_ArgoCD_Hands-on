# Use the official PHP image with Apache
FROM vimal13/apache-webserver-php 

# Install bash and other utilities (if necessary)
#RUN apt-get update && apt-get install -y bash curl

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory content into the container
COPY . .

# Expose port 80
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]

