##
##    Cassandra
##    https://git.openstack.org/cgit/stackforge/poppy/tree/docker/cassandra/Dockerfile?id=686630e56ef5fdaf0aa0cf77c26fec2a45f8ddd7
##

FROM blackdigger/okkobase
MAINTAINER okko

# Install Cassandra
RUN echo "deb http://debian.datastax.com/community stable main" | sudo tee -a /etc/apt/sources.list.d/datastax.sources.list
RUN curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -
RUN apt-get update
RUN apt-get install -y dsc20 cassandra=2.0.*

# Deploy startup script
ADD init.sh /usr/local/bin/cass-dock
RUN chmod 755 /usr/local/bin/cass-dock

# Deploy shutdown script
ADD shutdown.sh /usr/local/bin/cass-stop
RUN chmod 755 /usr/local/bin/cass-stop

EXPOSE 7199 7000 7001 9160 9042
USER root
CMD cass-dock
