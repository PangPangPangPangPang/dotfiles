# !/bin/bash
ma="$(uname -s)"
case "${ma}" in
    Linux*) machine=Linux;;
    Darwin*) machine=Mac;;
    CYGWIN*) machine=Cygwin;;
    MINGW*) machine=MinGw;;
    *) machine=UNKNOWN
esac
if [ ${machine} == Mac ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew install exa
    brew install ripgrep
    brew cask install kitty
    brew install --HEAD neovim
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
    git clone https://github.com/PangPangPangPangPang/dotfiles.git ~/.dotfiles
    mkdir -p ~/.config/kitty
    cp ~/.dotfiles/terminal/kitty.conf ~/.config/kitty
    cp ~/.dotfiles/terminal/gruvbox-kitty.conf ~/.config/kitty
    cp ~/.dotfiles/terminal/.zshrc ~/
    cp ~/.dotfiles/terminal/.zimrc ~/
    cp ~/.dotfiles/terminal/.zshenv ~/
    cp ~/.dotfiles/terminal/.p10k.zsh ~/

    brew install tmux
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    cp ~/.dotfiles/terminal/.tmux.conf ~/
    cp ~/.dotfiles/terminal/tmux.status.conf ~/.tmux.status.conf
    tmux source ~/.tmux.conf
    ~/.tmux/plugins/tpm/bin/install_plugins
    brew install bat git-delta
    brew install fontconfig
    sh ~/.dotfiles/font/install_font.sh
fi

if [ ${machine} == Linux ]; then
    yay -S exa ripgrep alacritty neovim tmux git-delta bat python2-pip python-pip
    python3 -m pip install --user --upgrade pynvim
    python -m pip install --user --upgrade pynvim
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
    git clone https://github.com/PangPangPangPangPang/dotfiles.git ~/.dotfiles
    mkdir -p ~/.config/kitty
    cp ~/.dotfiles/terminal/kitty.conf ~/.config/kitty
    cp ~/.dotfiles/terminal/gruvbox-kitty.conf ~/.config/kitty
    cp ~/.dotfiles/terminal/.zshrc ~/
    cp ~/.dotfiles/terminal/.zimrc ~/
    cp ~/.dotfiles/terminal/.zshenv ~/
    cp ~/.dotfiles/terminal/.p10k.zsh ~/

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    cp ~/.dotfiles/terminal/.tmux.conf ~/
    cp ~/.dotfiles/terminal/tmux.status.conf ~/.tmux.status.conf
    tmux source ~/.tmux.conf
    ~/.tmux/plugins/tpm/bin/install_plugins
    sh ~/.dotfiles/font/install_font.sh
fi

