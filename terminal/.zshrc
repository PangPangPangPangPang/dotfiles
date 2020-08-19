alias t="[ -z "$TMUX"  ] && { tmux attach -t max || exec tmux new-session -s max && exit; }"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### Added by zinit's installer
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-completions

# zinit ice atclone"gdircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh" nocompile'!'
# zinit light trapd00r/LS_COLORS

zinit load zdharma/history-search-multi-word
zinit load skywind3000/z.lua

# zinit ice pick"async.zsh" src"pure.zsh"; zinit light sindresorhus/pure
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit ice from"gh-r" as"program"; zinit load junegunn/fzf-bin

zinit ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh

# git
zinit light tj/git-extras
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZP::git

### End of zinit's installer chunk

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
