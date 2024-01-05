# path to homebrew git
export PATH=/usr/local/bin/git:$PATH

# launch comdef
autoload -Uz compinit && compinit

# path to asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# enhancd
. ~/enhancd/init.sh

# apply aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# apply functions
if [ -f ~/.functions ]; then
    . ~/.functions
fi

# custom prompt
PROMPT="%F{green}%n@%h%f:%F{blue}%~%f:$(parse_git_branch)"$'\n'"%# "
