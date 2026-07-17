FROM node:18-alpine

# Install dependencies
RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    git \
    curl \
    wget

# Clone and build v86
WORKDIR /app
RUN git clone https://github.com/copy/v86.git .

# Install dependencies
RUN npm install

# Build v86
RUN npm run build

# Expose port 8080
EXPOSE 8080

# Start HTTP server
CMD ["npm", "run", "serve"]
