# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt PROMPT_SUBST
alias ls="ls --color=auto"
export PS1="( .-.)"$'\n'"%n@%m:%~%(!.#.$) "
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:/home/cupped/.local/share/flatpak/exports/share:/usr/local/share"
export PATH="$PATH:/home/streamer/.local/bin:/home/cupped/.cargo/bin"

bindkey "^[[3~" delete-char

bindkey "^[[3;5~" kill-word

bindkey "^?" backward-delete-char

bindkey "^H" backward-kill-word

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

autoload -U select-word-style
select-word-style bash

mkcd() {
    mkdir -p "$1" && cd "$1"
}
