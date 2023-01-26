FROM alpine:latest

RUN apk update --no-cache \
&& apk add --no-cache bash ncurses jq iproute2-ss coreutils procps curl util-linux-misc gpg sudo

COPY cardano-wallet/bech32 cardano-wallet/cardano-address cardano-wallet/cardano-cli cardano-wallet/cardano-node cardano-wallet /usr/local/bin/

RUN echo "alias env=/usr/bin/env" >> ~/.bashrc \
    && echo "alias cntools='/cnode/scripts/cntools.sh -u'" >> ~/.bashrc \
    && echo "alias gLiveView='/cnode/scripts/gLiveView.sh -u'" >> ~/.bashrc \
    && echo "export PATH=/cnode/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"  >> ~/.bashrc