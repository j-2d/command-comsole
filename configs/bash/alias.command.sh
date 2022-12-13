## Kubectl
alias k="kubectl"
complete -F __start_kubectl k

alias podracing="kubectl get pod"

## Vagrant
alias vagr='vagrant up && vagrant ssh'

## Scoop
alias scup="scoop update '*'"
alias scmd='scoop list | tee $COMMAND_CONSOLE_DIR/README.md'

alias gocc='cd $COMMAND_CONSOLE_DIR'

## Git
function gitpushcurrent()
{
    curr_branch=$(git branch | grep "*" | sed "s/* //");
    if [ "$curr_branch" == "master" ] || [ "$curr_branch" == "dev" ] || [ "$curr_branch" == "dontpushthis" ]
    then
        echo "We don't push to $curr_branch";
    else 
        echo "We do push to $curr_branch"
          git push origin $curr_branch;
  fi
}

alias gs='git status -sb'
alias ggs='clear; git status'
alias gco='git checkout'
__git_complete gco _git_checkout
alias gsw='git switch'
alias gcm='git commit -m'
alias ga='git add'
alias gacm='git commit -am'
alias gp='git pull'
alias gdev='gsw dev'
alias gpd='gd && gp && gsw -'
alias gpc=gitpushcurrent
alias gb='git branch'
__git_complete gb _git_branch

## Bash
alias lls="ls -la"
alias tree="ls -aR | grep ":$" | perl -pe 's/:$//;s/[^-][^\/]*\//    /g;s/^    (\S)/└── \1/;s/(^    |    (?= ))/│   /g;s/    (\S)/└── \1/'"

## cat/bat
alias cat="bat"