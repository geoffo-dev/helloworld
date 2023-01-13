#!/bin/bash

# Store the hostname var
HOSTNAME=$(hostname)

# Overwrite it in the index.html
sed -i "s|HOSTNAME|$HOSTNAME|g" index.html 

# Start Server
python server.py