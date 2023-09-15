

ma="$(uname -s)"
case "${ma}" in
    Linux*) machine=Linux;;
    Darwin*) machine=Mac;;
    CYGWIN*) machine=Cygwin;;
    MINGW*) machine=MinGw;;
    *) machine=UNKNOWN
esac

MYDIR=`dirname $0`

if [ ${machine} == Mac ]; then
    rm -rf ~/Library/Rime
    git clone --depth 1 https://github.com/iDvel/rime-ice.git ~/Library/Rime
    cp ~/.dotfiles/Rime/* ~/Library/Rime/
fi

if [ ${machine} == Linux ]; then
    rm -rf ~/.config/fcitx/rime
    git clone --depth 1 https://github.com/iDvel/rime-ice.git ~/.config/fcitx/rime
    cp ~/.dotfiles/Rime/* ~/.config/fcitx/rime
fi
