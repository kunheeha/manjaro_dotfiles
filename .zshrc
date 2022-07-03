neofetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
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

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# My config

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vim'
 fi

# cargo
export PATH="$HOME/.cargo/bin:$PATH"
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
# Backup
alias backup='sudo rsync -avzz /home/kunheeha /run/media/kunheeha/Backup'

# use bat instead of cat
alias cat='bat'
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
alias highbrightness='xrandr --output HDMI-A-0 --brightness 1.5 && xrandr --output DisplayPort-0 --brightness 1.5'
alias fullbrightness='xrandr --output HDMI-A-0 --brightness 1 && xrandr --output DisplayPort-0 --brightness 1'
alias halfbrightness='xrandr --output HDMI-A-0 --brightness 0.5 && xrandr --output DisplayPort-0 --brightness 0.5'
alias lowbrightness='xrandr --output HDMI-A-0 --brightness 0.1 && xrandr --output DisplayPort-0 --brightness 0.1'
# second monitor only brightness controls
alias 2highbrightness='xrandr --output DisplayPort-0 --brightness 1.5'
alias 2fullbrightness='xrandr --output DisplayPort-0 --brightness 1'
alias 2halfbrightness='xrandr --output DisplayPort-0 --brightness 0.5'
alias 2lowbrightness='xrandr --output DisplayPort-0 --brightness 0.1'
# ncmpcpp
alias music='ncmpcpp'
    
# Git
alias gls 'git worktree list'
alias gA='git add .'
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gp='git push origin'
alias gpf='git push -f origin'
alias gbd='git branch -d'
alias gbdf='git branch -D'
alias gr='git rebase origin/master'
alias grc='git rebase --continue'
alias gm='git merge'
alias gmc='git merge --continue'
alias gf='git fetch'

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
alias dbrestore='~/Work/webapp-alpha/scripts/cache_database_restore.sh'
alias dbcreate='~/Work/webapp-alpha/scripts/cache_database_create.sh'
alias dbdelete='~/Work/webapp-alpha/scripts/cache_database_destroy.sh'
alias clientdbrefresh='~/Work/client-app/scripts/drop_database.sh && ~/Work/client-app/scripts/create_database.sh'
alias bootstrapdb='~/Work/webapp-alpha/scripts/bootstrap_from_production.sh'
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

# p10k prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
