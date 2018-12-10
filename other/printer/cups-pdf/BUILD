cd src &&

gcc $CFLAGS -s cups-pdf.c -o cups-pdf -lcups &&

prepare_install &&

install -D -m700 cups-pdf /usr/lib/cups/backend/cups-pdf &&

# Install Postscript Color printer
cd ../extra &&
install -D -m644 CUPS-PDF_noopt.ppd /usr/share/cups/model/CUPS-PDF_noopt.ppd &&
install -D -m644 CUPS-PDF_opt.ppd /usr/share/cups/model/CUPS-PDF_opt.ppd &&

# Install config file
install -D -m644 cups-pdf.conf /etc/cups/cups-pdf.conf &&

# Install docs
install -D -m 644 ../README /usr/share/doc/$MODULE/README &&

# use lp group from cups
chgrp -R lp /etc/cups
