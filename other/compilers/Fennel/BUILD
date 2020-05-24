#_lua_version=$(installed_version lua) &&
_lua_version="5.3"

make fennel fennel.lua fennelview.lua fennelfriend.lua &&

prepare_install &&

install -Dm644 "fennel.lua" "fennelview.fnl" -t "/usr/lib/lua/${_lua_version%.*}"
install -Dm755 "fennel" "/usr/bin/fennel"
