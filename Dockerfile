FROM ubuntu:22.04

# Install dependencies for v86
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    curl \
    wget \
    build-essential \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Install v86 server
WORKDIR /app
RUN git clone https://github.com/copy/v86.git .

# Install npm dependencies
RUN npm install

# Expose port 8080
EXPOSE 8080

# Start v86 server
CMD ["node", "tools/http-server.js", "--port", "8080"]
