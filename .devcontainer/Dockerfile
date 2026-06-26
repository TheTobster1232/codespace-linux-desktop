FROM elementary/docker:stable

RUN apt update && apt install -y \
    tigervnc-standalone-server \
    novnc websockify \
    xterm \
    && apt clean

RUN mkdir -p /root/.vnc

COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh
