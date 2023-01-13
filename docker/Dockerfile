FROM python:alpine

# Create a directory to store the code
RUN mkdir /www

# Copy across the code
COPY ./www/* /www
COPY ./app/server.py /www

# Set the working directory
WORKDIR /www

# Serve the server on start
CMD ["python", "server.py"]