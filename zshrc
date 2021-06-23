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
    #MichaelAquilina/zsh-autoswitch-virtualenv
antigen bundles <<EOBUNDLES
    arialdomartini/oh-my-git


    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
    zsh-users/zsh-history-substring-search
EOBUNDLES

export AUTOSWITCH_VIRTUAL_ENV_DIR=".venv"

# theme
#antigen theme agnoster/agnoster-zsh-theme agnoster
#antigen theme bhilburn/powerlevel9k powerlevel9k
antigen theme denysdovhan/spaceship-prompt

DEFAULT_USER='ntauthority'

SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
SPACESHIP_TIME_SHOW=true
SPACESHIP_DIR_TRUNC_PREFIX=…/
SPACESHIP_VENV_PREFIX=" using "
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXIT_CODE_SYMBOL="✘ "

# local overrides
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

antigen apply

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export VISUAL=vim
export EDITOR="$VISUAL"

