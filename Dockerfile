FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get instaall -y apache2 curl
EXPOSE 80
WORKDIR /var/www/html
COPY index.html /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]

#FROM  centos:latest
#MAINTAINER dineshm12101997@gmail.com
#RUN apt update
#RUN yum install httpd -y
 #zip\
 #unzip
#ADD https://www.free-css.com/free-css-templates/page289/zon.zip /var/www/html/
#WORKDIR /var/www/html/
#RUN unzip zon.zip
#RUN cp -rvf zon/* .
#RUN rm -rf zon zon.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#EXPOSE 80
 
 
#FROM  centos:latest
 #MAINTAINER vikashashoke@gmail.com
 #RUN yum install -y httpd \
  #zip\
  #unzip
 #ADD https://www.dreamstime.com/photos-images/pets.html /var/www/html/
 #WORKDIR /var/www/html/
 #RUN unzip shine.zip
 #RUN cp -rvf shine/* .
 #RUN rm -rf shine shine.zip
 #CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 #EXPOSE 80
