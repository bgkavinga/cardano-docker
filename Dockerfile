FROM alpine:latest

RUN apk update --no-cache \
&& apk add --no-cache bash ncurses jq iproute2-ss coreutils procps curl util-linux-misc gpg sudo sqlite

RUN echo "alias env=/usr/bin/env" >> ~/.bashrc \
    && echo "export PATH=/cnode/bin:/cnode/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"  >> ~/.bashrc