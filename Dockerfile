FROM alpine:edge

LABEL org.opencontainers.image.source https://github.com/tsenart/debug

RUN echo 'https://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories

RUN apk update && \
    apk add --no-cache \
    # build/code
    build-base git go bash bash-completion ncurses neovim tmux jq \
    # network
    bind-tools iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep \
    # certificates
    ca-certificates openssl \
    # processes/io
    htop atop procps strace iotop sysstat ltrace ncdu logrotate hdparm pciutils psmisc tree pv \
    # kubernetes
    kubectl

ENTRYPOINT ['/bin/bash']
