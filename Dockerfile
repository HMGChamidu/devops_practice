FROM nginx:alpine

# Copy all static web files into the Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
