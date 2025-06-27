# Dockerfile
FROM node:18

# Set working directory
WORKDIR /app

# Copy app files
COPY . .

ENV NODE_ENV=development

# Install dependencies
RUN npm install

# Build admin panel
RUN npm run build

# Expose port
EXPOSE 1337

# Start the app
CMD ["npm", "start"]

