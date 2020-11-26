[![Docker Repository on Quay](https://quay.io/repository/giantswarm/debug/status "Docker Repository on Quay")](https://quay.io/repository/giantswarm/debug)

# Debug docker container

Contains a lot of debugging tools for production. Based on alpine.

* Build/code: `build-base git go bash bash-completion ncurses vim tmux jq`
* Network: `bind-tools iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep`
* Certificates: `ca-certificates openssl`
* Processes/IO: `htop atop strace iotop sysstat ltrace ncdu logrotate hdparm pciutils psmisc tree pv`

## Attach to an existing container

```nohighlight
docker run --rm -ti --net container:<container-id> quay.io/giantswarm/debug
```

## Use tmux inside tmux

Just double press `<ctrl>+b` to use the inner tmux
