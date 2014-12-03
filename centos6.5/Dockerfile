INSTRUCTION centos6.5 with ssh
FROM insaneworks/centos
MAINTAINER  nivance
###################
# yum install
RUN rm -f /etc/yum.repos.d/* 
ADD yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
ADD yum.repos.d/CentOS-Debuginfo.repo /etc/yum.repos.d/CentOS-Debuginfo.repo
ADD yum.repos.d/CentOS-fasttrack.repo /etc/yum.repos.d/CentOS-fasttrack.repo
ADD yum.repos.d/CentOS-Media.repo /etc/yum.repos.d/CentOS-Media.repo
ADD yum.repos.d/CentOS-Vault.repo /etc/yum.repos.d/CentOS-Vault.repo
ADD yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo
ADD yum.repos.d/epel-testing.repo /etc/yum.repos.d/epel-testing.repo

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum update -y && yum install -y openssh-server supervisor unzip subversion openssh-clients
RUN mkdir -p /var/run/sshd /var/log/supervisor 

ENV LANG en_US.UTF-8

RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -P "" -q \
    && ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -P "" -q \
    && sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config \
    && sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config \
    && echo 'root:000000'|chpasswd

EXPOSE 22
CMD ["/usr/bin/supervisord"]







