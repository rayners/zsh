
# from macports
[[ -s "$HOME/.profile" ]] && source ~/.profile

export PATH="/usr/local/mysql/bin:~/bin:$PATH"
export EDITOR="emacsclient -c"

# add the perlbrew paths
[[ -s "$HOME/perl5/perlbrew/etc/bashrc" ]] && source ~/perl5/perlbrew/etc/bashrc

# add the rvm paths
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored

# swiped and modified from http://stackoverflow.com/questions/171563/whats-in-your-zshrc/171564#171564
# case insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

zstyle :compinstall filename '/Users/draynes/.zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz colors
colors

setopt prompt_subst
PROMPT='
%{$fg_bold[green]%}%n%{$reset_color%} %{$fg_bold[white]%}on%{$reset_color%} %{$fg_bold[cyan]%}%m%{$reset_color%}%{$fg_bold[yellow]%}${vcs_info_msg_0_}%{$reset_color%}
%{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%} %# '

autoload -Uz vcs_info
precmd() {
	vcs_info
}

#RPROMPT='${vcs_info_msg_0_}'
