# Base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the app
COPY . .

# Expose the port
EXPOSE 8080

# Start the app
CMD [ "npm", "start" ]
