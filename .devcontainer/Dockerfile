FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    xfce4 xfce4-goodies \
    flatpak \
    plasma-discover \
    plasma-discover-backend-flatpak \
    tigervnc-standalone-server \
    novnc websockify \
    xterm \
    dbus-x11 \
    && apt clean

# Enable Flathub
RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

RUN mkdir -p /root/.vnc

COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh
