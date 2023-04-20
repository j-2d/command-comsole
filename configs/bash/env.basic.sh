function pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

## Spicetify
pathadd "/c/Users/e371975/tools/spicetify-cli"
## Tools
pathadd "/c/Users/e371975/tools/vagrant/bin"
pathadd "/c/Users/e371975/tools/virtualbox"
pathadd "/c/Users/e371975/tools/groovy-3.0.7/bin"
pathadd "/c/Users/e371975/tools/7-Zip"
pathadd "/c/Users/e371975/tools/cmder/vendor/git-for-windows/git-bash.exe"
pathadd "/c/Users/e371975/scoop/apps/maven/current/bin/mvn"

## Kube
export KUBECONFIG=~/.kube/config:/c/dev/beast/kubernetes/kubeconfigs/vagrant.yaml
## Bash Config
export BASH_CONFIG=pwd # not working, want to be able to append varirable as path to this folder
