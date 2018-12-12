export LEIN_ROOT="true" &&

sedit "s:1.5.1:1.6.0:"   project.clj &&
sedit "s:0.0.12:0.0.15:" project.clj &&
sedit "s:1.2.0:1.5.4:"   project.clj &&
sedit "s:0.0.11:0.3.0:"  project.clj &&
sedit "s:0.2.3:0.2.10:"  project.clj &&

lein uberjar &&

DEST_DIR=/usr/share/java/clooj &&

prepare_install &&

mkdir -p $DEST_DIR &&

install -Dm755 $SCRIPT_DIRECTORY/clooj /usr/bin/clooj &&
install -Dm644 target/$MODULE-$VERSION-standalone.jar $DEST_DIR/clooj.jar &&
install -Dm644 $SCRIPT_DIRECTORY/clooj.desktop /usr/share/applications/clooj.desktop
