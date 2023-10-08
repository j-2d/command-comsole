alias k='kubectl'

alias podracing='k get pods'

alias infra='helm upgrade -i infrastructure /c/dev/beast/kubernetes/charts/infrastructure -f /c/dev/beast/kubernetes/overrides/dev/infrastructure/base.yaml -f /c/dev/beast/kubernetes/overrides/dev/infrastructure/ports.yaml'
alias assess='helm upgrade -i assessment /c/dev/beast/kubernetes/charts/assessment -f /c/dev/beast/kubernetes/overrides/dev/assessment/base.yaml -f /c/dev/beast/kubernetes/overrides/dev/assessment/ports.yaml'
alias uio='helm upgrade -i ops-insights /c/dev/beast/kubernetes/charts/ops-insights -f /c/dev/beast/kubernetes/overrides/dev/ops-insights/base.yaml -f /c/dev/beast/kubernetes/overrides/dev/ops-insights/ports.yaml -f /c/dev/beast/kubernetes/overrides/dev/assessment/assessment-mfe-vagrant.yaml'
alias beast='helm upgrade -i beast /c/dev/beast/kubernetes/charts/beast -f /c/dev/beast/kubernetes/overrides/dev/ic2/base.yaml -f /c/dev/beast/kubernetes/overrides/dev/ic2/ports.yaml -f /c/dev/beast/kubernetes/overrides/dev/assessment/ic2-base.yaml'
alias sims='helm upgrade -i simulators /c/dev/beast/kubernetes/charts/simulators -f /c/dev/beast/kubernetes/overrides/dev/simulators/base.yaml -f /c/dev/beast/kubernetes/overrides/dev/simulators/ports.yaml -f /c/dev/beast/kubernetes/overrides/dev/assessment/sims-base.yaml'


alias hdu='helm dep update /c/dev/beast/kubernetes/charts/infrastructure && helm dep update /c/dev/beast/kubernetes/charts/assessment && helm dep update /c/dev/beast/kubernetes/charts/ops-insights && helm dep update /c/dev/beast/kubernetes/charts/beast'
alias hd='infra && assess && uio'

alias update_kubeconfig='k config view --raw --minify > /c/dev/beast/kubernetes/kubeconfigs/vagrant.yaml'

alias br='source /c/dev/beast/kubernetes/.config/.bash_aliases && echo "Bash Reloaded"'

alias vagr='cd /c/dev/beast/vagrant && vagrant up && ./vssh infra ops-insights assessment ic2 simulators'

alias k9s='k9s -n default'