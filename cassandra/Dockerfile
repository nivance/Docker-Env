INSTRUCTION cassandra
FROM joyos
MAINTAINER nivance
ENV CASSVERS 2.1.2
############
# JDK
ADD jdk-7u71-linux-x64.rpm  /opt/soft/
RUN rpm -ivh /opt/soft/jdk*.rpm && rm -rf  /opt/soft/jdk*.rpm
######################
RUN yum install -y wget vim
RUN cd /usr/local ; \
	wget http://mirrors.hust.edu.cn/apache/cassandra/${CASSVERS}/apache-cassandra-${CASSVERS}-bin.tar.gz ; \
	tar -xzvf apache-cassandra-${CASSVERS}-bin.tar.gz
#ADD apache-cassandra-${CASSVERS}-bin.tar.gz /usr/local/
#RUN cd /usr/local ; \
#	tar -xzvf apache-cassandra-${CASSVERS}-bin.tar.gz
##################
ADD bashrc /root/.bashrc
ADD envset.sh /etc/envset.sh
ADD bash_profile /root/.bash_profile
EXPOSE 22 9042 7000 7199 37379 44678 9160
CMD ["/usr/bin/supervisord"]









