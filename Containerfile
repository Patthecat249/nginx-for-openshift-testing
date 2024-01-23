# Verwenden des offiziellen Nginx-Basisimages
FROM nginx:latest

# Exponieren des internen Ports 9000
EXPOSE 9000

# Create public folder
RUN mkdir -p /var/www/html/nginx

# Kopieren von Content in das Image
COPY index.html /var/www/html/nginx/

# Kopieren der Nginx-Konfigurationsdatei in das Image
COPY nginx.conf /etc/nginx/conf.d/my-nginx.conf

# Starten des Nginx-Servers
CMD ["nginx", "-g", "daemon off;"]
