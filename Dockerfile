FROM bubuntux/nordvpn:latest

RUN apt-get update -y && \
    apt-get -y install qbittorrent-nox

COPY services/ /etc/systemd/system/

CMD service qbittorrent-nox start