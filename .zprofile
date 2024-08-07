#!/bin/zsh

# XDG
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state/"


# default programs
export BROWSER="firefox"
export TERMINAL="alacritty"
export EDITOR='emacs -q -nw'
export VISUAL='emacsclient -c -a emacs'

# export CC=/usr/bin/gcc-10 CXX=/usr/bin/gcc-10

# add to path
# set PATH so it includes private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# AWS
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"

# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# K8S
export KUBECONFIG="$XDG_CONFIG_HOME/kube"
export KUBECACHEDIR="$XDG_CACHE_HOME/kube"

# minikube
export MINIKUBE_HOME="$XDG_DATA_HOME/minikube"

# Set the wgetrc file
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# Set leiningen home
export LEIN_HOME="$XDG_DATA_HOME/lein"

# npmrc
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Python environments 'pyenv'
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Rustup home
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# # rust setup & add to PATH
# . "$HOME/.cargo/env"
# export PATH="$HOME/.cargo/bin:$PATH"

# Use if Gradle is installed
# export GRADLE_HOME=/opt/gradle/gradle-7.4.2
# export PATH=$GRADLE_HOME/bin:$PATH
export JAVA_HOME="/usr/lib/jvm/java-1.21.0-openjdk-amd64"
export PATH=$JAVA_HOME/bin:$PATH

# deno install
if [ -d "$HOME/.deno" ]; then
    DENO_INSTALL="$HOME/.deno"
    PATH="$DENO_INSTALL/bin:$PATH"
fi

# wine
if [ -d "$XDG_DATA_HOME/wineprefixes" ]; then
    WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
fi

# NVM init
if [ -d "$XDG_CONFIG_HOME/nvm" ]; then
    NVM_DIR="$XDG_CONFIG_HOME"/nvm
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
