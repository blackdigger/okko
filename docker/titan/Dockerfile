#https://registry.hub.docker.com/u/apobbati/titan-rexster/dockerfile/
#
# Use phusion/baseimage as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md for
# a list of version numbers.
FROM phusion/baseimage:0.9.15

# Set correct environment variables.
ENV HOME /root

# Regenerate SSH host keys. baseimage-docker does not contain any, so you
# have to do that yourself. You may also comment out this instruction; the
# init system will auto-generate one during boot.
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

MAINTAINER Abhinav Pobbati <apobbati@codeblock.io>

WORKDIR /opt/titan-0.5.2-hadoop2

RUN curl -o /opt/titan.zip http://s3.thinkaurelius.com/downloads/titan/titan-0.5.2-hadoop2.zip

RUN unzip /opt/titan.zip -d /opt/ && \
    rm /opt/titan.zip

ADD rexster-titan.xml.template /opt/titan-0.5.2-hadoop2/
ADD run.sh /opt/titan-0.5.2-hadoop2/

EXPOSE 8182
EXPOSE 8183
EXPOSE 8184

CMD ["/bin/sh", "-e", "/opt/titan-0.5.2-hadoop2/run.sh"]

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
