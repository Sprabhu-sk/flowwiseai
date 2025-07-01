FROM node:18

# Create app directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Set environment variables (optional)
ENV PORT=3000

# Expose the app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
