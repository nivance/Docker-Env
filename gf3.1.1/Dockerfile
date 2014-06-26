
INSTRUCTION GlassFish3.1.1 + Jrockit + Maven3.2.1

FROM jrockit

MAINTAINER  nivance

##############
#maven3.2.1
ADD apache-maven-3.2.1-bin.zip /opt/soft/
RUN cd /opt/soft/ ; \
	unzip apache-maven-3.2.1-bin.zip -d . ; \
	rm -f apache-maven-3.2.1/conf/settings.xml
ADD settings.xml /opt/soft/apache-maven-3.2.1/conf/

#runtime ENV
ADD	bash_profile /root/ 
ADD	bashrc /root/ 
ADD limits.conf /etc/security/
RUN	cd /root/ ; \
	rm -f .bash_profile ; \
	mv bashrc .bashrc	; \	
	mv bash_profile .bash_profile
	
# glassfish3.1.1
ADD glassfish-3.1.1.zip /usr/local/
RUN	cd /usr/local ; \
	unzip glassfish-3.1.1.zip -d . ; \
	rm /usr/local/glassfish-3.1.1.zip
ADD ojdbc6.jar /usr/local/glassfish3/glassfish/domains/domain1/lib/ext/

ADD supervisord.conf /etc/supervisord.conf
EXPOSE 22
CMD ["/usr/bin/supervisord"]


