FROM debian:latest
MAINTAINER Christian Gatzlaff <cgatzlaff@gmail.com>

RUN apt-get update \
	&& DEBIAN_FRONTEND="noninteractive" \
	apt-get install -y --no-install-recommends etherwake \
	&& apt-get --purge autoremove \
	&& rm -rf /var/lib/apt/lists/*

ENV mac 11:11:11:11:11:11
ENV ifname eth0

# start servers
CMD etherwake -i ${ifname} ${mac}
