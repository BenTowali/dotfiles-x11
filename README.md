# Ben Towali's Dotfiles
## Prerequisites
stow - to easily insert configs into the home directory
## How to install them
```
git clone https://github.com/BenTowali/dotfiles-x11
cd dotfiles-x11
stow . -t /home/$(whoami)
```
Remember when you use stow it symlinks to where ever you cloned the directory to, so choose carefully where you clone it