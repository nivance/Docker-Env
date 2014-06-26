
INSTRUCTION memcached

FROM centos

MAINTAINER  nivance

##############
# memcached-1.4.10
ADD memcached-1.4.10-runtime.tar.gz /opt/soft/
RUN tar -zxvf /opt/soft/memcache-1.4.10-runtime.tar.gz ; \
	echo '/opt/soft/memcache-1.4.10-runtime/libevent/lib' >> /etc/ld.so.conf ; \
	cd /opt/soft/memcache-1.4.10-runtime/libevent/lib ; \
	ln -sf libevent-2.0.so.5.1.3 libevent.so ; \
	ln -sf libevent_pthreads-2.0.so.5.1.3 libevent_pthreads-2.0.so.5 ; \
	ln -sf libevent_openssl-2.0.so.5.1.3 libevent_openssl-2.0.so.5 ; \
	ln -sf libevent_extra-2.0.so.5.1.3 libevent_extra-2.0.so.5 ; \
	ln -sf libevent_core-2.0.so.5.1.3 libevent_core-2.0.so.5 ; \
	ln -sf libevent-2.0.so.5.1.3 libevent-2.0.so.5 ; \
	ln -sf libevent_core-2.0.so.5.1.3 libevent_core.so ; \
 	ln -sf libevent_extra-2.0.so.5.1.3 libevent_extra.so ; \
	ln -sf libevent_openssl-2.0.so.5.1.3 libevent_openssl.so ; \
	ln -sf libevent_pthreads-2.0.so.5.1.3 libevent_pthreads.so ; \
	ldconfig
	
ADD supervisord.conf /etc/supervisord.conf
EXPOSE 22
CMD ["/usr/bin/supervisord"]


