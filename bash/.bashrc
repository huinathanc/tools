sshadd() {
  eval `ssh-agent -s`
  ssh-add /c/Users/ZZ012F738/.ssh/tdc_gitlab 2>/dev/null
  ssh-add /c/Users/ZZ012F738/.ssh/ibm_github 2>/dev/null
  echo "ssh added"
}

sshaddme() {
  eval `ssh-agent -s`
  ssh-add /c/Users/ZZ012F738/.ssh/kat_github 2>/dev/null
  echo "ssh added me"
}

venv() {
    source $1/Scripts/activate
}

hello() {
    echo "Hello World $1"
}

prettystg() {
  echo "Prettifying staged changes"
  npx prettier --write $(git diff --name-only --diff-filter d --staged | xargs)
}

git-prune-local() {
  echo "This action will delete git branches gone from the remote: (p.s. make sure you aren't on one of those branches)"
  git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do echo $branch; done
  read -p "Are you sure? [y/n] " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    echo "Deleting branches..."
    git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
  fi
}

nvm-init() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}
