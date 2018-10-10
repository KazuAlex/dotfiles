#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
BASHRC="$HOME/.bashrc"
ZSHRC="$HOME/.zshrc"
if [ -f $BASHRC ]; then
  echo "adding linuxbrew bin path to your $BASHRC"
  echo "export PATH=\$PATH:/home/linuxbrew/.linuxbrew/bin" >> $BASHRC
elif [ -f $ZSHRC ]; then
  echo "adding linuxbrew bin path to your $ZSHRC"
  echo "export PATH=\$PATH:/home/linuxbrew/.linuxbrew/bin" >> $ZSHRC
else
  echo "cannot locate $BASHRC or $ZSHRC\r\nadd /home/linuxbrew/.linuxbrew/bin in your .bashrc, .zshrc or equivalent file"
fi
/home/linuxbrew/.linuxbrew/bin/brew install python
/home/linuxbrew/.linuxbrew/bin/brew install python3
/home/linuxbrew/.linuxbrew/bin/brew install neovim
/home/linuxbrew/.linuxbrew/bin/pip3 install neovim
