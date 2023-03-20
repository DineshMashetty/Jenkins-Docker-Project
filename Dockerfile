FROM CentOs
RUN yum install httpd -y
RUN yum install git -y
COPY index.html /var/www/html
COPY . /var/www/html
WORKDIR /var/www/html
RUN touch index.php
RUN echo "Hello KPMG India" >> /var/www/html/index.php
ENV DocumentRoot=/var/www/html/
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]

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
