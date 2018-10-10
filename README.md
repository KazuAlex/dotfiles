# neovim installation
## automatic
```bash
sh -c "$(curl -fsSL https://gitlab.com/KazuAlex/dotfiles/raw/master/bin/install.sh)"
```

## manual
### [Linuxbrew](http://linuxbrew.sh)  
#### install  
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
```
  
#### bin path  
Add brew's bin path to your .zshrc, .bashrc or equivalent
```bash
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
```

### [Neovim](https://neovim.io/)  
#### dependencies  
```bash
brew install python
brew install python3
```

#### install neovim with brew  
```bash
brew install neovim
```

#### install neovim python package
```bash
pip3 install neovim
```
  
# A last step before start coding like a vim master
## get repository
```bash
git init

# for https repo
git remote add origin https://gitlab.com/KazuAlex/dotfiles.git
# for ssh repo
git remote add origin git@gitlab.com:KazuAlex/dotfiles.git

git fetch origin
git reset --hard origin/master
```

## Ready to code
At first launch, `~/.config/nvim/config/01-plugins.vim` file will install all necessaries stuff
