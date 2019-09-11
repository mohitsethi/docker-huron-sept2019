FROM centos:latest

RUN yum update -y
RUN yum install epel-release -y 
# RUN yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
# RUN yum install yum-utils -y
# RUN yum-config-manager --enable remi-php72
# RUN yum update -y 
# RUN yum install php72 -y

