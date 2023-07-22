#!/bin/bash

cd ${ZDOTDIR:-$HOME}

# clone repo
! test -e dotfiles && \
  git clone https://github.com/chimaru/dotfiles

WORKDIR="${ZDOTDIR:-$HOME}/dotfiles"


# zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${WORKDIR}/.zprezto" 

# make symbolic link to home dir
cd ${WORKDIR}
make install

# cloning NeoBundle
! test -e ${WORKDIR}/.vim/bundle/neobundle.vim && \
  cd ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim
cd ${WORKDIR}

# powerline font
git clone https://github.com/powerline/fonts.git --depth=1
# install and remove
cd fonts
./install.sh
cd ..
rm -rf fonts

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle

# anyenv initialize
anyenv install --init

# vim neobundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# mac settings
sh mac_settings.sh
