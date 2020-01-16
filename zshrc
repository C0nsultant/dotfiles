source ~/.zsh/antigen.zsh

# frameworks
antigen use oh-my-zsh
#antigen use prezto

# oh-my-zsh plugins
antigen bundles <<EOBUNDLES
    robbyrussell/oh-my-zsh plugins/colored-man-pages
    robbyrussell/oh-my-zsh plugins/colorize
    robbyrussell/oh-my-zsh plugins/cp
    robbyrussell/oh-my-zsh plugins/per-directory-history
    robbyrussell/oh-my-zsh plugins/pip
    robbyrussell/oh-my-zsh plugins/python
    robbyrussell/oh-my-zsh plugins/safe-paste
    robbyrussell/oh-my-zsh plugins/sudo
    robbyrussell/oh-my-zsh plugins/virtualenv
    robbyrussell/oh-my-zsh plugins/virtualenvwrapper
    robbyrussell/oh-my-zsh plugins/web-search
EOBUNDLES

# other plugins
antigen bundles <<EOBUNDLES
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
EOBUNDLES

# theme
#antigen theme agnoster/agnoster-zsh-theme agnoster
antigen theme bhilburn/powerlevel9k powerlevel9k

# conda
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup

# local overrides
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

antigen apply
