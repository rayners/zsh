source ~/.profile

export PATH="/usr/local/mysql/bin:/Users/draynes/bin:$PATH"
#export EDITOR="mate -w"
export EDITOR="emacsclient -c"

source /Users/draynes/perl5/perlbrew/etc/bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/draynes/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz colors
colors

setopt prompt_subst
PROMPT='
%{$fg_bold[green]%}%n%{$reset_color%} %{$fg_bold[white]%}on%{$reset_color%} %{$fg_bold[cyan]%}%m%{$reset_color%}${vcs_info_msg_0_}
%{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%} %# '

autoload -Uz vcs_info
precmd() {
	vcs_info
}

#RPROMPT='${vcs_info_msg_0_}'
