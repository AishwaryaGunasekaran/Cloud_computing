# Use the official Node.js image.
FROM node:14

# Create and set the working directory.
WORKDIR /work

# Copy package.json and package-lock.json.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of your application files.
COPY . .

# Set the command to run your application.
CMD ["npm", "test"]
