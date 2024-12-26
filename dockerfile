# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the website files to the Nginx directory
COPY index.html /usr/share/nginx/html/index.html
COPY ..

# Expose port 80 for Nginx
EXPOSE 80

# Nginx will run by default when the container starts
CMD ["nginx", "-g", "daemon off;"]
