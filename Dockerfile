# Use Node 20 base image
FROM node:20-alpine

WORKDIR /app

# Copy package.json & install deps
COPY package.json ./
RUN npm install --production

# Copy app files
COPY index.js ./

# Expose port
EXPOSE 3000

# Start app
CMD ["node", "index.js"]
