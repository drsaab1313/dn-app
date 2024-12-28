# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /Users/arjun/dock-node-app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]

