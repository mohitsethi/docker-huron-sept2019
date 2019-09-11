FROM centos:latest

ENV env1 val1
ENV env2 val2
ENV PORT 8443


RUN yum update -y
RUN yum install epel-release -y 
# RUN yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
# RUN yum install yum-utils -y
# RUN yum-config-manager --enable remi-php72
# RUN yum update -y 
# RUN yum install php72 -y
RUN mkdir /huron /huron/jars
WORKDIR /huron
COPY *.jar /huron/jars
COPY start.sh /huron/

# CMD [ "executable" ]

EXPOSE $PORT

ENTRYPOINT [ "/huron/start.sh", "$env1", " -p", "$PORT"  ]
