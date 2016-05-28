if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

termtime () {
	print -nP "%{$fg[black]%}%D{"%m.%d\ %H:%M:%S"}%{$reset_color%}"
}

precmd () {
	print -nP $return_code
	# cp_prompt=$(( $($HOME/.zsh_custom/cursor) + 1))
}

#preexec () {
#	cp_preexec=$($HOME/.zsh_custom/cursor)
#	tput cup $cp_prompt 0
#	print -P "\033[1A%{$fg[black]%}%D{"%m.%d\ %H:%M:%S"}%{$reset_color%} "
#	tput cup $cp_preexec 0
#}

local return_code="%(?..%{$fg_bold[red]%}« %?%{$reset_color%}
)"

local git='$(git_prompt_info)$(git_prompt_ahead)'

PROMPT="%{${fg_bold[$CARETCOLOR]}%}»%{$reset_color%} "

RPROMPT="%{$fg[yellow]%}$git%{$reset_color%} %{${fg[green]}%}%1~%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_AHEAD="!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}a%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[cyan]%}m%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}d%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}r%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%}=%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%}?%{$reset_color%}"
