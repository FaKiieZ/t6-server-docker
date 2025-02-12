#!/bin/bash

# Build the initial image
docker build -t t6-server-install .

# Run the container interactively
echo "Running container interactively"
docker run -it --name temp-container t6-server-install

# Commit the container as a new image
docker commit temp-container t6-server
echo Image saved as t6-server

# Clean up
docker stop temp-container
docker rm temp-container