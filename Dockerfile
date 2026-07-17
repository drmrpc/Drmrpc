FROM node:18-alpine

# Install build dependencies
RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    git \
    curl \
    wget \
    qemu-img

# Clone v86
WORKDIR /app
RUN git clone https://github.com/copy/v86.git .

# Install npm dependencies
RUN npm install

# Build v86
RUN npm run build

# Copy your Windows XP ISO (place it in your repo root)
COPY windows_xp.iso /app/images/ 2>/dev/null || true

# If ISO exists, convert to img format during build
RUN if [ -f /app/images/windows_xp.iso ]; then \
    qemu-img convert -f iso -O qcow2 /app/images/windows_xp.iso /app/images/windows_xp.img; \
    rm /app/images/windows_xp.iso; \
    fi

# Copy our custom index.html
COPY index.html /app/
COPY favicon.ico /app/

# Expose port 8080
EXPOSE 8080

# Start server
CMD ["npm", "run", "serve"]
