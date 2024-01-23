# Verwenden des offiziellen Nginx-Basisimages
FROM nginx:latest

# Exponieren des internen Ports 9000
EXPOSE 9000

# Kopieren der Nginx-Konfigurationsdatei in das Image
COPY nginx.conf /etc/nginx/nginx.conf

# Starten des Nginx-Servers
CMD ["nginx", "-g", "daemon off;"]
