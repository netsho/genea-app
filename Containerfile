# Use the official Nginx image to serve static files
FROM docker.io/library/nginx:alpine

# Copy the static site files to the nginx web root
COPY . /usr/share/nginx/html

# Copy custom default nginx configuration file
COPY  nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose port 3010 for the web server
EXPOSE 3010

# Run nginx on startup
CMD ["nginx", "-g", "daemon off;"]