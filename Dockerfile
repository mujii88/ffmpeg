# Use official n8n image (Alpine-based)
FROM n8nio/n8n:latest

# Switch to root to install FFmpeg
USER root

# Update package lists and install FFmpeg
RUN apk add --no-cache ffmpeg

# Switch back to default n8n user
USER node

# Default start command
CMD ["n8n", "start"]
