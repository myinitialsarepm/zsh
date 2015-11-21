#!/bin/sh
ZSH_FOLDER=$(cd $(dirname $0) && pwd -P)
ln -fs $ZSH_FOLDER/zshrc ~/.zshrc
ln -fs $ZSH_FOLDER/zprofile ~/.zprofile
