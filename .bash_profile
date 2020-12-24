# utf8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# git tree
alias gto='git log --graph --pretty=oneline --abbrev-commit --all'
alias gt='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --all'

# vscode
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code .'

# handly ll
alias ll='ls -al'

# go module activated 
export GO111MODULE="on"

# kubectl secret
function kubesec {
  kubectl get secrets $@ -o go-template='{{range $k,$v := .data}}{{printf "%s: " $k}}{{if not $v}}{{$v}}{{else}}{{$v | base64decode}}{{end}}{{"\n"}}{{end}}'
}
