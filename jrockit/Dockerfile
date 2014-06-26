
INSTRUCTION Jrockit

FROM centos

MAINTAINER  nivance

############
# Jrockit
ADD jrockit-jdk1.6.0_37-R28.2.5-4.1.0-linux-x64.bin  /opt/soft/
ADD bash_profile  /root/
RUN chmod +x /opt/soft/jrockit-jdk1.6.0_37-R28.2.5-4.1.0-linux-x64.bin ; \
	./opt/soft/jrockit-jdk1.6.0_37-R28.2.5-4.1.0-linux-x64.bin ; \
	mv /jrockit-jdk1.6.0_37-R28.2.5-4.1.0/ /opt/soft/ ; \
	rm /opt/soft/jrockit-jdk1.6.0_37-R28.2.5-4.1.0-linux-x64.bin; \
	mv /root/bash_profile /root/.bash_profile 
	
ADD supervisord.conf /etc/supervisord.conf
EXPOSE 22
CMD ["/usr/bin/supervisord"]

