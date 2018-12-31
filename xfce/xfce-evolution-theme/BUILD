prepare_install &&

# Prepare all theme directories for package
for i in Xfce\ Evolution*; do
  if [ -d "$i" ]; then
     install -dm 0755 "/usr/share/themes/${i##*/}" &&
     cp -rp "${i##*/}" "/usr/share/themes/"
  fi
done &&

# Remove unnecessary TOOLS folder
rm -rf "/usr/share/themes/Xfce Evolution/TOOLS"
