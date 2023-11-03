# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy all source code to the container
COPY . .

# Expose port 3000 for the Express app
EXPOSE 3000

# Start the Express app when the container runs
CMD [ "node", "app.js" ]
