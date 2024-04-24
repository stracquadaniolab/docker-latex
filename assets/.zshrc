# update path with local bins
PATH=$HOME/.local/bin:$PATH

# configure prompt
PS1='%F{252}[%n@%m%f %B%F{green}%1~%b%f%F{252}] %F{252}%#%f '

#########################################
# configure plugins 
#########################################
# config ZSH autocomplete
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
zstyle ':completion:*' list-suffixeszstyle ':completion:*' expand prefix suffix
autoload -Uz compinit; compinit

# history search 
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

setopt prompt_subst

# history search
# up/down arrow keys search through history 
# using the text in the buffer
bindkey '\e[A' up-line-or-beginning-search
bindkey '\e[B' down-line-or-beginning-search

#########################################
# aliases
#########################################
## basic aliases for common commads
alias ll='ls -alh --color=auto'
alias du='du -hs'
alias grep='grep --color'