./bootstrap &&

default_build &&

if module_installed bash-completion ; then
   install -Dm644 misc/auto-completion/bash/show-completion.bash /usr/share/bash-completion/completions/show &&
   install -Dm644 misc/auto-completion/bash/sf-completion.bash /usr/share/bash-completion/completions/sf
fi &&

if module_installed zsh ; then
   install -Dm644 misc/auto-completion/zsh/_show /usr/share/zsh/site-functions/_show &&
   install -Dm644 misc/auto-completion/zsh/_sf /usr/share/zsh/site-functions/_sf
fi
