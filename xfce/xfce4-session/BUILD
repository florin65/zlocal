OPTS+=" --disable-static \
        --disable-debug"

default_build &&

 # Provide a default PolicyKit Authentication Agent
install -d /etc/xdg/autostart &&
cp "$SCRIPT_DIRECTORY/xfce-polkit-gnome-authentication-agent-1.desktop" /etc/xdg/autostart/
