# FABER
## Quick cd's
alias gofaber='cd /c/dev/faber-repo && clear && gs'
alias gofabervagr='cd /c/dev/faber-repo/vagrant'
## Gradle Build
alias bldf='/c/dev/faber/java/gradlew assembleSS7'
alias blddf='/c/dev/faber/java/gradlew assembleSS7 --refresh-dependencies'
## Deployment
alias frei="faber refresh external-interfaces"
alias freil="faber refresh external-interfaces local"
alias freild="faber refresh external-interfaces local --set ei-nifi.dev=true"
alias freid="faber refresh external-interfaces --set ei-nifi.dev=true"

alias frp="faber refresh planning"
alias frpl="faber refresh planning local"

alias fri="faber refresh infrastructure"
