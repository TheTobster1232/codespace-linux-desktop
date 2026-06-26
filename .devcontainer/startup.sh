#!/bin/bash

# Create VNC startup script
cat <<EOF > /root/.vnc/xstartup
#!/bin/sh
xrdb $HOME/.Xresources
startxfce4 &
EOF

chmod +x /root/.vnc/xstartup

# Start VNC server
tigervncserver :1 -localhost no -geometry 1280x720 -depth 24

# Start noVNC
websockify --web=/usr/share/novnc/ 6080 localhost:5901
