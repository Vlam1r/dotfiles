# Lines configured by zsh-newuser-install
setopt extendedglob
# End of lines configured by zsh-newuser-install
autoload -U colors && colors
PROMPT="%{$fg[cyan]%}[%{$fg[magenta]%}%m%{$fg[yellow]%}%d%{$fg[cyan]%}] $ %{$reset_color%}"
RPROMPT="%{$fg[yellow]%}[%t]%{$reset_color%"

eval $(thefuck --alias)
