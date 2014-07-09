
INSTRUCTION memcached

FROM 192.168.3.10:5000/library/joyos

MAINTAINER  Tany/joyveb

##############
# mongdb-2.6.3
# Warning: should get mongodb-linux-x86_64-2.6.3.tgz
ADD mongodb-linux-x86_64-2.6.3.tgz /opt/soft/
RUN mv /opt/soft/mongodb-linux-x86_64-2.6.3.tgz /opt/soft/mongodb-linux-x86_64-2.6.3.tar.gz ; \
	tar zxvf /opt/soft/mongodb-linux-x86_64-2.6.3.tar.gz -C /opt/soft/ ; \
	rm -f /opt/soft/mongodb-linux-x86_64-2.6.3.tar.gz ; \
	cd /opt/soft/mongodb-linux-x86_64-2.6.3  && mkdir db
	
ADD supervisord.conf /etc/supervisord.conf
EXPOSE 22
CMD ["/usr/bin/supervisord"]


