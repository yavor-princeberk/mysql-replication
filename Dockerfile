FROM ubuntu:16.04

RUN echo 'deb http://archive.ubuntu.com/ubuntu trusty universe' >> /etc/apt/sources.list &&  \
	apt-get update && apt-get upgrade -y && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get install -y wget nano apt-utils software-properties-common mysql-server-5.6 libmysqlclient-dev mysql-client-5.6  git git-core vim gosu

COPY my.cnf /etc/mysql/my.cnf 
COPY entrypoint.sh /entrypoint.sh
#RUN git -c http.sslVerify=false clone https://vanya:ABcd_1234!@princeberk.com:4000/vanya/martin_j.git
#
#RUN uname
#RUN chmod 777 /usr/local/bin
#RUN cp /martin_j/doc/docker-files/mysql/my1.cnf /etc/mysql/my.cnf
#RUN cp /martin_j/doc/docker-files/mysql/replication-entrypoint.sh /usr/local/bin/
#RUN chmod +x /usr/local/bin/replication-entrypoint.sh
#
#RUN chmod +x /martin_j/doc/docker-files/mysql/init-slave.sh
#RUN chmod +x /martin_j/doc/docker-files/mysql/init-master.sh

VOLUME /var/lib/mysqldocker
EXPOSE 3306
#
#CMD bash /martin_j/doc/docker-files/mysql/start.sh
