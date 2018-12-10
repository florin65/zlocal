prepare_install &&

_lua_version=$(installed_version lua) &&

install -Dm644 "fennel.lua" "fennelview.fnl" -t "/usr/lib/lua/${_lua_version%.*}"
install -Dm755 "fennel" "/usr/bin/fennel"
