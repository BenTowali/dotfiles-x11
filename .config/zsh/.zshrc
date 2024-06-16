# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zsh Base Shell Config
## Histfile
HISTFILE=~/.cache/zhistfile
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
## Autocompletions
zstyle ":completion:*" menu no
zstyle ":fzf-tab:complete:cd:*" fzf-preview "ls $realpath"
## Random
unsetopt beep

# Aliases
alias anime="ani-cli"
alias solitaire="ttysolitaire --no-background-color"
alias zconf="nvim ~/.config/zsh/.zshrc"
alias zenv="nvim ~/.config/zsh/.zshenv"
alias vconf="nvim ~/.config/nvim/"
alias news="newsboat -q"
alias reddit="tuir"
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
alias lg="lazygit"

# Keybindings
bindkey -e
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward


# Use LF to switch directories
lfcd () {
	tmp="$(mktemp)"
	lf -last-dir-path="$tmp" "$@"
	if [ -f "$tmp" ]; then
		dir="$(cat "$tmp")"
		rm -f "$tmp"
		[ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
	fi
}
bindkey -s "^o" 'lfcd\n'

# Zoxide
eval "$(zoxide init --cmd cd zsh)"

# Plugins
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "MichaelAquilina/zsh-you-should-use"
zplug "Aloxaf/fzf-tab"
zplug "romkatv/powerlevel10k", as:theme, depth:1

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

