FROM ubuntu
#LABEL version="18.9" web="nginx"
#ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && apt-get -y install nginx
COPY . /var/www/html
CMD ["nginx","-g","daemon off;" ]
