FROM nginx:alpine 

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy wait-for-it script to ensure web service is ready before starting NGINX
COPY wait-for-it.sh /usr/local/bin/wait-for-it
RUN chmod +x /usr/local/bin/wait-for-it

# Expose the port for the load balancer
EXPOSE 80

# Start the NGINX server after the web service is ready
CMD ["wait-for-it", "webservice:5000", "--", "nginx", "-g", "daemon off;"]
