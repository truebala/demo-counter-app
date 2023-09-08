FROM ubuntu
WORKDIR /app
RUN apt-get update -y
RUN apt-get install httpd -y
COPY index.html /var/www/html
CMD ['httpd' , '-D' , 'FOREGROUND']
