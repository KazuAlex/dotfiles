# install.sh
```bash
sh -c "$(curl -fsSL https://gitlab.com/KazuAlex/dotfiles/raw/master/bin/install.sh)"  
```

# manual install
## [Linuxbrew](http://linuxbrew.sh)  
### install  
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"  
```
  
### bin path  
Add brew's bin path to your .zshrc, .bashrc or equivalent
```bash
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
```

## [Neovim](https://neovim.io/)  
### dependencies  
```bash
brew install python
brew install python3
```

### install neovim with brew  
```bash
brew install neovim
```

### install neovim python package
```bash
pip3 install neovim
```

# Ready to code
At first launch, `~/.config/nvim/config/01-plugins.vim` file will install all necessaries stuff
