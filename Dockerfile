# Use the official image as a parent image 
FROM node:current-slim

# Set the working directory
WORKDIR ~/my_image

# Copy the file from your host to your current location
COPY package.json .

# Run the command inside your image filesystem
RUN npm install

# Inform Docker that the container is listening on the specified port at runtim$
EXPOSE 8080

# Run the specified command within the container.
CMD [ "npm", "start" ]

# Copy the rest of your app's source code from your host to your image filesyst$
COPY . .
