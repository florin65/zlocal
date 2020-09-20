_install_openrc_initd(){
    install -Dm755 $SCRIPT_DIRECTORY/openrc/init.d/* /etc/init.d/
}

_install_openrc_confd(){
    install -Dm644 $SCRIPT_DIRECTORY/openrc/conf.d/* /etc/conf.d/
}

prepare_install &&

_install_openrc_initd &&
_install_openrc_confd &&

install -Dm755 $SCRIPT_DIRECTORY/startDM.sh /etc/X11/startDM.sh &&
install -Dm755 $SCRIPT_DIRECTORY/xdg-user-dirs /etc/X11/xinit/xinitrc.d/xdg-user-dirs
