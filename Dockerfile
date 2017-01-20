# Base source
FROM ubuntu

# Version and owner
MAINTAINER Roy Rodan
# LABEL version="1.0"

# Update the repo and packages
RUN apt-get update
RUN apt-get install -y apache2

# Update the config
RUN echo "service apache2 start" >> /etc/bash.bashrc
ADD index.html /var/www/html

# Open port 80
EXPOSE 80
