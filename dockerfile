# Base image of Nginx
FROM nginx:alpine

# Copy our website so Nginx can show it
COPY index.html /usr/share/nginx/html/index.html

