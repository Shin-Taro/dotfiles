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
PROMPT="%F{green}%n@%h%f:%F{blue}%~%f:$(parse_git_branch)"$'\n'"%# "
