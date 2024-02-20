# Use an official Node.js runtime as the base image
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
COPY app.js ./

# Install npm dependencies
RUN npm install

# Expose port 3008
EXPOSE 3008

# Command to run the application
CMD ["node", "app.js"]
