# path to homebrew git
export PATH=/usr/local/bin/git:$PATH

# launch comdef
autoload -Uz compinit && compinit

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

# set up shell bind
source <(fzf --zsh)

# setting java version
jdk() {
  version=$1
  export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
  java --version
}
jdk 17

# set Android sdk path
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# custom prompt
precmd(){
  PROMPT="%F{green}%n@%h%f:%F{blue}%~%f:$(parse_git_branch)"$'\n'"%# "
}

# bun completions
[ -s "/Users/shintaro.takahashi/.bun/_bun" ] && source "/Users/shintaro.takahashi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shintaro.takahashi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shintaro.takahashi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shintaro.takahashi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shintaro.takahashi/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.local/bin:$PATH"

# claude code env
export CLAUDE_CODE_USE_VERTEX=1
export CLOUD_ML_REGION=us-east5
export ANTHROPIC_VERTEX_PROJECT_ID=anthropic-vertexai
