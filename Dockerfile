# Use official Node 20 image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all app files
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
