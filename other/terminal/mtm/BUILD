make HEADERS='-DNCURSESW_INCLUDE_H="<ncurses.h>"' &&

prepare_install &&

install -Dm755 mtm /usr/bin/ &&
install -Dm644 mtm.1 /usr/share/man/man1/ &&
install -dm755 /usr/share/terminfo &&
tic -s -x -o /usr/share/terminfo/ mtm.ti
