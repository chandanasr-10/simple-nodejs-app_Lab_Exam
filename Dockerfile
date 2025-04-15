# Use official Node.js LTS image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json if available
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Expose the port your app runs on (adjust if different)
EXPOSE 3000

# Command to run your app
CMD ["npm", "index.js"]
