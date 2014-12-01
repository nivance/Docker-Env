INSTRUCTION cassandra
FROM centos
MAINTAINER nivance
ENV CASSVERS 2.1.2
############
# JDK
#ADD jdk-7u51-linux-x64.rpm  /opt/soft/
RUN cd /opt/soft/ ; \
	wget http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.rpm?AuthParam=1417418725_9ed9bf26fc411225e575c7ffa631c09c ;\
	rpm -ivh /opt/soft/jdk*.rpm && rm -rf  /opt/soft/jdk*.rpm
######################
RUN cd /usr/local ; \
	wget http://mirrors.hust.edu.cn/apache/cassandra/${CASSVERS}/apache-cassandra-${CASSVERS}-bin.tar.gz ; \
	tar -xzvf apache-cassandra-${CASSVERS}-bin.tar.gz
##################
#ADD envset.sh	/etc/envset.sh
EXPOSE 22 9042 7000 7199 37379 44678 9160
CMD ["/usr/bin/supervisord"]









