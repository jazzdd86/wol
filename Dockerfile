FROM alpine:edge
MAINTAINER Christian Gatzlaff <cgatzlaff@gmail.com>

RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
	apk add --update --no-cache awake py-awake

ENV mac 11:11:11:11:11:11

# start servers
CMD awake ${mac}
