# Use an official Node.js runtime as a parent image
FROM node:latest

# Set the working directory in the container
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY src .

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source inside the Docker image
# COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 8080

# Define the command to run the app
CMD ["npm", "start"]