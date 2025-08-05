# Use a small official Nginx image
FROM nginx:alpine

# Copy your custom HTML file into the default Nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web access
EXPOSE 80

# No need to define CMD — the nginx:alpine image already has default behavior
