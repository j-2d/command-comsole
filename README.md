# Command Console

## Per System Configuration

1. Clone repo into /c/dev/

2. Add to ~/.bash_profile:

```bash
test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc

test -f /c/dev/command-console/configs/bash/main.sh && . /c/dev/command-console/configs/bash/main.sh
```