#specifying base image
FROM centos:7

#description
LABEL description="image for apache container" 

LABEL maintainer="Rosaria"

#executing command to update the packages
RUN yum -y update

#executing command to install apache
RUN yum -y install httpd

#copying index file from our local into the container at a specified location 
COPY index.html /var/www/html/

#container will listen on port 80
EXPOSE 80

# Systemctl start httpd
ENTRYPOINT ["usr/sbin/httpd"]


CMD [ "-D", "FOREGROUND" ]

