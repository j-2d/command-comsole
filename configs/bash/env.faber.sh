# Proxy
export HTTP_PROXY=http://proxy-zsgov.external.lmco.com:80/
export HTTPS_PROXY=http://proxy-zsgov.external.lmco.com:80/
export NO_PROXY=localhost,127.0.0.1,kubernetes.docker.internal
export http_proxy=http://proxy-zsgov.external.lmco.com:80/
export https_proxy=http://proxy-zsgov.external.lmco.com:80/
export no_proxy=.lmco.com,localhost,kubernetes.docker.internal
## AWS
export no_proxy="$no_proxy,146.69.146.148,146.69.146.157,146.69.10.34,gitlab.us.lmco.com"
export NO_PROXY="$no_proxy"
## Env Vars
export FABER_NEXUS_PULL_USER="faber-pull"
export FABER_NEXUS_PULL_PASS="SomethingObvious"
export FABER_NEXUS_URL_BASE="http://146.69.146.254:8081"
export FABER_NEXUS_PUBLISH_USER="faber-publish"
export FABER_NEXUS_PUBLISH_PASS="SomethingObvious"
export FABER_NEXUS_PUBLISH_REPO="lmb-m2-lm"