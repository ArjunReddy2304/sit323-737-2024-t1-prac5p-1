# Use the official Node.js 14 image as a parent image
FROM node:14-alpine

# Install curl
RUN apk add --no-cache curl

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json files from your host to your current directory inside the container
COPY package*.json ./

# Run npm install in your container to install dependencies
RUN npm install

# Copy everything from your project directory into the container
COPY . .

# Make port 3000 available to the world outside the container
EXPOSE 3000

# Define the command to run the app
<<<<<<< HEAD
CMD ["node", "index.js"]
=======
CMD [ "node", "index.js" ]
>>>>>>> d9c3e3b5fb40011a5e8885e3557bace0c2399628
