mkdir -p "man" &&

help2man -n "check if host is reachable using ssh_config" \
         -S SSH-TOOLS -N --version-string " " -o man/ssh-ping.1    ./ssh-ping &&
help2man -n "shows version of the SSH server you are connecting to" \
         -S SSH-TOOLS -N --version-string " " -o man/ssh-version.1 ./ssh-version &&
help2man -n "diff a file over SSH" \
            -S SSH-TOOLS -N --version-string " " -o man/ssh-diff.1 ./ssh-diff &&
help2man -n "get some facts about the remote system" \
            -S SSH-TOOLS -N --version-string " " -o man/ssh-facts.1 ./ssh-facts &&
help2man -n "prints server host keys in several formats" \
         -S SSH-TOOLS -N --version-string " " -o man/ssh-hostkeys.1 ./ssh-hostkeys &&

prepare_install &&

mkdir -p /usr/share/man/man1/ &&
cp man/* /usr/share/man/man1/ &&

mkdir -p /usr/bin/ &&
cp ssh-* /usr/bin/
