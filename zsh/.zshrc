### ---- history config -------------------------------------
export HISTFILE=$HOME/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

# change directory without cd
setopt AUTO_CD

# loads and initializes Zsh completion system.
autoload -Uz compinit && compinit

# enables case-insensitive matching in completion.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

### ---- prompt config --------------------------------------
setopt PROMPT_SUBST

PROMPT='%F{blue}%~%f $ '

### ---- aliases --------------------------------------------

# better ls
alias ls="ls -G"
alias l="ls -alh"

# git shortcuts
alias glg='git log'
alias ga='git add'
alias gst='git status'
alias gp='git push origin head -u'
alias gc='git commit'
alias gclean='git branch | grep -v "main" | xargs git branch -D'
alias gpu='git pull'
alias gco='git checkout'
alias grh='git reset --hard'

# quick navigation
alias notes='clear;cd ~/notes;l'
alias dev='clear;cd ~/Developer'

# vim
alias vim='nvim'

# npm
alias ni='npm install'
alias na='npm add'

### ---- antigen --------------------------------------------

# source antigen
source ~/.antigen/antigen.zsh

# plugins
# antigen theme spaceship-prompt/spaceship-prompt
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# apply changes
antigen apply

### --- spaceship prompt ------------------------------------

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "