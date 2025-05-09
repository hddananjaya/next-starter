# Use the official Node.js image as the base image
FROM node:20
# Create and set the working directory
WORKDIR /usr/src/app
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
# Install the dependencies
RUN npm install
# Copy the rest of the application code to the working directory
COPY . .
# Build the NestJS application
RUN npm run build
# Expose the port the app runs on
EXPOSE 3000
# Define the command to run the application
CMD ["npm", "run", "start"]