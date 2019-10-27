go build \
   -tags noupgrade,noembeddocs \
   -gcflags "all=-trimpath=${PWD}" \
   -asmflags "all=-trimpath=${PWD}" \
   -ldflags "-X github.com/twpayne/chezmoi/cmd.DocsDir=/usr/share/doc/$MODULE \
             -X github.com/twpayne/chezmoi/cmd.VersionStr=$MODULE \
             -extldflags ${LDFLAGS}" \
   . &&

prepare_install &&

install -D "$MODULE" "/usr/bin/" &&

mkdir -p "/usr/share/doc/$MODULE" &&
install -Dm644 docs/* "/usr/share/doc/$MODULE/" &&

install -Dm644 completions/chezmoi-completion.bash "/usr/share/bash-completion/completions/chezmoi"

if module_installed fish; then
   install -Dm644 completions/chezmoi.fish "/usr/share/fish/vendor_completions.d/chezmoi.fish"
fi

if module_installed zsh; then
   install -Dm644 completions/chezmoi.zsh "/usr/share/zsh/site-functions/_chezmoi"
fi
