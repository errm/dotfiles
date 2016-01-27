#!/bin/bash

set -e

cd `dirname $0`

source "install/homebrew.sh"
source "install/caskroom.sh"

git submodule init
git submodule update

./fonts/install.sh

source "install/simlinks.sh"

if [ "$SHELL" != "/bin/zsh" ]
then
  chsh -s /bin/zsh
fi
