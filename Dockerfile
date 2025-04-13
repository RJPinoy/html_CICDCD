FROM debian
RUN apt update
RUN apt install -y nginx curl
COPY . /var/www/html
RUN service nginx start
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]