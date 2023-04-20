alias vagr="cd /c/dev/beast/vagrant/ && vagrant up && ./vssh infra ops-insights assessment && vagrant ssh -- -t 'cd /c/dev/beast/kubernetes; /bin/bash'"

alias docker_pull='/c/dev/beast/kubernetes/scripts/workarounds/docker_pull.sh'
alias assess='helm upgrade -i assessment /c/dev/beast/kubernetes/charts/assessment -f /c/dev/beast/kubernetes/overrides/dev/assessment/base.yaml -f /c/dev/beast/kubernetes/overrides/dev/assessment/ports.yaml'
alias infra='helm upgrade -i infrastructure /c/dev/beast/kubernetes/charts/infrastructure -f /c/dev/beast/kubernetes/overrides/dev/infrastructure/base.yaml -f /c/dev/beast/kubernetes/overrides/dev/infrastructure/ports.yaml'
alias uio='helm upgrade -i ops-insights /c/dev/beast/kubernetes/charts/ops-insights -f /c/dev/beast/kubernetes/overrides/dev/ops-insights/base.yaml -f /c/dev/beast/kubernetes/overrides/dev/ops-insights/ports.yaml'
alias uio_assess='helm upgrade -i ops-insights /c/dev/beast/kubernetes/charts/ops-insights -f /c/dev/beast/kubernetes/overrides/dev/ops-insights/base.yaml -f /c/dev/beast/kubernetes/overrides/dev/ops-insights/ports.yaml -f /c/dev/beast/kubernetes/overrides/dev/assessment/assessment-mfe-vagrant.yaml'


alias hdu='helm dep update /c/dev/beast/kubernetes/charts/infrastructure && helm dep update /c/dev/beast/kubernetes/charts/assessment && helm dep update /c/dev/beast/kubernetes/charts/ops-insights'
alias hd='infra && uio_assess && assess && docker_pull'

alias update_kubeconfig='k config view --raw --minify > /c/dev/beast/kubernetes/kubeconfigs/vagrant.yaml'


alias test='hdu && helm package /c/dev/stalker/services/modules/threat-monitor/helm/ --version 0.1.97 -d /c/dev/beast/kubernetes/charts/assessment/charts/ && assess --set threat-monitor.dev=true'