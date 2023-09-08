FROM ubuntu
WORKDIR /app
RUN yum update -y
RUN yum install httpd -y
COPY index.html /var/www/html
CMD ['httpd' , '-D' , 'FOREGROUND']
