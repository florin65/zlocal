make &&

prepare_install &&

make INSTALL_DIR=/usr/bin \
     MAN_DIR=/usr/share/man \
     DOC_DIR=/usr/share/doc/secure_delete \
     install &&

# renamed due to naming conflicts
mv /usr/bin/smem /usr/bin/semem &&
sedit 's/smem/semem/g' /usr/bin/the_cleaner.sh &&
sedit 's/smem/semem/g' /usr/share/man/man1/semem.1 &&
sedit 's/SMEM/SEMEM/g' /usr/share/man/man1/semem.1 &&
chmod a+r /usr/bin/* &&

# Improve the man pages
sedit 's/thiefs, law enforcement or other threats/an adversary/g' /usr/share/man/man1/srm.1 &&
sedit 's/thiefs, law enforcement/an adversary./g' /usr/share/man/man1/sswap.1 &&
sedit 's/or other threats.//g' /usr/share/man/man1/sswap.1 &&
sedit 's/thiefs, law enforcement/an adversary./g' /usr/share/man/man1/semem.1 &&
sedit 's/or other threats.//g' /usr/share/man/man1/semem.1 &&
sedit 's/thiefs, law enforcement/an adversary./g' /usr/share/man/man1/sfill.1 &&
sedit 's/or other threats.//g' /usr/share/man/man1/sfill.1
