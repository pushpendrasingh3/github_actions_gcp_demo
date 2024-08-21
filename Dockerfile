FROM nginx:latest
COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html
EXPOSE 80 443
CMD ["sudo", "usermod", "-a", "-G", "docker", "${USER}"]
CMD ["nginx", "-g", "daemon off;"]
