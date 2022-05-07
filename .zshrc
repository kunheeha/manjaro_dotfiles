neofetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh 
export ZSH="$HOME/.oh-my-zsh"

# Options
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
bindkey -v

ZSH_THEME="robbyrussell"

# Case Sensitive Completion
CASE_SENSITIVE="false"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# How often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
# goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
export GOPATH="${HOME}/go"
export PATH="${GOPATH}/bin:${PATH}"
# Fuck
eval $(thefuck --alias)

# ALIASES

# use Neovim
alias v='nvim'
alias vim='nvim'
# dotfiles directory
alias vimconfig='cd ~/.config/nvim'
# pacman
alias pacman='sudo pacman'
# set alacritty opacity
alias opacity='python ~/.config/scripts/change_alacritty_opacity.py'
# ptls aliases
alias l='ptls -a'
alias ll='ptls -la'
alias cp='ptcp'
# lsd instead of ls
alias ls='lsd'
alias la='lsd -a'
alias lla='lsd -la'
alias lt='lsd --tree'
# brightness controls
alias highbrightness='xrandr --output HDMI-A-0 --brightness 1.5 && xrandr --output DisplayPort-0 --brightness 1'
alias fullbrightness='xrandr --output HDMI-A-0 --brightness 1 && xrandr --output DisplayPort-0 --brightness 1'
alias halfbrightness='xrandr --output HDMI-A-0 --brightness 0.5 && xrandr --output DisplayPort-0 --brightness 0.5'
alias lowbrightness='xrandr --output HDMI-A-0 --brightness 0.1 && xrandr --output DisplayPort-0 --brightness 0.1'
    
# Git
alias gA='git add .'
alias gc='git commit -m'
alias gs='git status'
alias gp='git push origin'

# Work
alias staff='cd ~/Work/webapp-alpha'
alias runstaff='./scripts/run_everything.sh'
alias client='cd ~/Work/client-app'
alias runclient="./scripts/run_app.sh"
alias buying="cd app/common/workflow/data/buying_workflow_v0.2"
alias selling="cd app/common/workflow/data/selling_workflow_v0.1"
alias lending="cd app/common/workflow/data/lending_v1"
alias remortgaging="cd app/common/workflow/data/remortgaging_v1"
alias migrate='./scripts/plan_migrations.sh'
alias synccase='./scripts/sync_case_to_client_app.sh'
alias dbrestore='./scripts/cache_database_restore.sh'
alias dbcreate='./scripts/cache_database_create.sh'
#
# Random
alias cpufetch='~/cpufetch/cpufetch'
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# CUSTOM DIR NAMES

# Work
hash -d StaffApp=~/Work/webapp-alpha
hash -d ClientApp=~/Work/client-app
hash -d Buying=~/Work/webapp-alpha/app/common/workflow/data/buying_workflow_v0.2
hash -d Selling=~/Work/webapp-alpha/app/common/workflow/data/selling_workflow_v0.1
hash -d Remortgaging=~/Work/webapp-alpha/app/common/workflow/data/remortgaging_v1
hash -d Lending=~/Work/webapp-alpha/app/common/workflow/data/lending_v1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
