# Use official n8n image (Alpine-based)
FROM n8nio/n8n:latest

# Install FFmpeg as root without switching users manually
USER root

# Install FFmpeg and dependencies
RUN apk add --no-cache ffmpeg bash

# Switch back to n8n user
USER node

# Start n8n
ENTRYPOINT ["n8n", "start"]
