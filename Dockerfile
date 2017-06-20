FROM alpine
RUN apk update
RUN apk add rsync openssh
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
