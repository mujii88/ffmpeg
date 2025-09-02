# Use official n8n image as base
FROM n8nio/n8n:latest

# Switch to root to install FFmpeg
USER root

# Update package lists and install FFmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Clean up to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to default n8n user
USER node

# Default start command
CMD ["n8n", "start"]
