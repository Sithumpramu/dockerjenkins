# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app's source code to the working directory
COPY . .

# Build the React app
RUN npm run build

# Install a lightweight HTTP server to serve the build directory
RUN npm install -g serve

# Set the command to start the server
CMD ["serve", "-s", "build", "-l", "80"]

# Expose port 80 to be accessible from outside the container
EXPOSE 80
