FROM blackdigger/okkobase:latest

MAINTAINER okko

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /opt/hazelcast
WORKDIR /opt/hazelcast
RUN apt-get -qqy update
ADD https://s3.amazonaws.com/docker-amg-dsp/hazelcast-3.2.5.jar /opt/hazelcast/hazelcast-3.2.5.jar
ADD Start.java /opt/hazelcast/Start.java
ADD hazelcast-conf.xml /opt/hazelcast/hazelcast-conf.xml
ADD start.sh /opt/hazelcast/start.sh
RUN chmod 755 /opt/hazelcast/start.sh
RUN javac -cp "hazelcast-3.2.5.jar" Start.java
RUN apt-get clean
EXPOSE 5701
CMD /opt/hazelcast/start.sh

