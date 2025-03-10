# Use official Node.js image as the base image
FROM node:16-alpine

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application files into the container
COPY . .

# Build the Next.js application for production
RUN npm run build

# Expose the port that your app will run on
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]