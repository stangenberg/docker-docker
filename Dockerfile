FROM thstangenberg/baseimage:latest

MAINTAINER Thorben Stangenberg <thorben@stangenberg.net>

ENV DOCKER_DEBUG=false \
 	DOCKER_API_CORS=false \
 	DOCKER_LOG_LEVEL=info 

# install docker
RUN curl -sSL https://get.docker.com/ | sh

# accept ip and socket connection
RUN echo 'DOCKER_OPTS="-H :2375 -H unix:///var/run/docker.sock"' >> /etc/default/docker

# volume for docker
VOLUME /var/lib/docker

# expose default docker port
EXPOSE 2375

# add docker to runit
ADD docker.sh /etc/service/docker/run
RUN chmod 700 /etc/service/docker/run

# Clean up when done.
RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/* \
		   /tmp/* \
		   /var/tmp/* 
