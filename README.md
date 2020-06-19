# My dot files using a git bare repository

## Install onto a new system

```
git clone --bare --recursive git@github.com:jonasanso/cfg.git $HOME/.cfg 
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout # Review possible errors overriding dot files and accept the licenses before
cd $HOME/.cfg
config submodule update --init
config submodule update
config config --local status.showUntrackedFiles no
config config --global core.excludesfile ~/.gitignore
```

## Reference

https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

http://blog.jacius.info/git-submodule-cheat-sheet/



