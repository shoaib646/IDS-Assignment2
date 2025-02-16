# Use the official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application (if required)
RUN npm run build

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "src/index.js"]
