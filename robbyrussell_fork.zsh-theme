PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"


# if  _CoqProject exists, display the opam switch version
function switch_show {
    if [ -f _CoqProject ]; then
        # if it exists, set the prompt to show the current Coq project
        echo " 🥚%{$fg[yellow]%}$(opam switch show)%{$reset_color%}"
    fi
}

PROMPT+="\$(switch_show)"

PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
