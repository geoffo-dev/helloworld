# Just use latest docker image as this is a simple app
FROM python:alpine

# Create a directory to store the code
RUN mkdir /www

# Copy across the code
COPY ./www/* /www
COPY ./app/server.py /www

# Copy startup script
COPY docker/startup.sh /www

# Change permissions to run as a non root user
RUN chmod a+rx -R /www

# Set the working directory
WORKDIR /www

# Run startup script
CMD ["sh", "/www/startup.sh"]