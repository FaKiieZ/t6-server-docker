#!/bin/bash

# Build the initial image
docker build -t t6-server-install .

# Run the container interactively
echo "Running container interactively. Perform your manual steps and then exit the shell."
docker run -it --name temp-container t6-server-install

# Commit the container as a new image
read -p "Enter a name for the new image: " image_name
docker commit temp-container "$image_name"
echo "Image saved as $image_name"

# Clean up
docker stop temp-container
docker rm temp-container