#!/bin/bash

echogood(){
    echo -e "\033[1m\E[32m$@\033[0m"
}

echobold(){
    echo -e "\033[1m$@\033[0m"
}

echoblue(){
    echo -e "\033[1m\E[34m$@\033[0m"
}


echobold "===> SETTING UP GIT"
echoblue "---> Setting up git aliases"

echoblue "----> ci='commit -v'"
git config --global alias.ci 'commit -v'

echoblue "----> pr='pull --rebase'"
git config --global alias.pr 'pull --rebase'

echoblue "----> lol='log --graph --decorate --pretty=oneline --abbrev-commit'"
git config --global alias.lol 'log --graph --decorate --pretty=oneline --abbrev-commit'

echoblue "----> b='branch'"
git config --global alias.ba 'branch'

echoblue "----> ba='branch -a'"
git config --global alias.ba 'branch -a'

echoblue "----> st='status'"
git config --global alias.st 'status'

echoblue "----> cm='commit -m'"
git config --global alias.cm 'commit -m'

echoblue "---> Make git use colors"
git config --global color.ui true

echogood "+++++> DONE"
