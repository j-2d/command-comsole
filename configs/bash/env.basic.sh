function pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

## JAVA
export JAVA_HOME="/c/Program Files/Eclipse Adoptium/jdk-11.0.14.101-hotspot/"
export JRE_HOME=$JAVA_HOME/jre
pathadd $JAVA_HOME/bin
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
export KUBECONFIG=~/.kube/config
## Bash Config
export BASH_CONFIG=pwd # not working, want to be able to append varirable as path to this folder
