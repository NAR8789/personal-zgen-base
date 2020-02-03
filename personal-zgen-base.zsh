zgen load nar8789/oh-my-zsh-preamble
zgen oh-my-zsh

# navigation plugins
zgen oh-my-zsh plugins/dircycle
zgen oh-my-zsh plugins/dirhistory
zgen oh-my-zsh plugins/last-working-dir
zgen oh-my-zsh plugins/fasd
zgen oh-my-zsh plugins/shrink-path

zgen oh-my-zsh plugins/git

zgen load djui/alias-tips
zgen load nar8789/zsh-git-prompt
zgen load nar8789/personal-shell-configs

# I think maybe these need to be included last..... we'll see
zgen load zsh-users/zsh-completions

zgen load zsh-users/zsh-autosuggestions
# zgen load zsh-users/zsh-syntax-highlighting
# unfortunately these currently interfere with yank-pop

zgen load nar8789/zsh-intentional-chpwd
