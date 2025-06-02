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
alias notes='clear;cd ~/Documents/notes'
alias dev='clear;cd ~/Developer'

# vim
alias vim='nvim'

# npm
alias ni='npm install'
alias na='npm add'
alias nrd='npm run dev'
alias nrb='npm run build'

# shadcn/ui
alias scn='npx shadcn-ui@latest add'

### ---- antigen --------------------------------------------

# source antigen
source ~/.antigen/antigen.zsh

# plugins
antigen bundle zsh-users/zsh-syntax-highlighting

# apply changes
antigen apply

export N_PREFIX="/Users/alex/.n"
