default_hosts=/etc/ansible/hosts
example=".example"

pullExample(){
  source="https://raw.githubusercontent.com/Source-Graph/ansible.template/main/simplest/ansible/.this/inventory/.example/hosts"

  if [ ! -d "$example" ]; then
    mkdir -p $example
    cd $example
    echo "Pulling Example hosts!"
    wget -c "$source"
  fi
}

makeDefaultInventory(){
if [ ! -f "$default_hosts" ]; then
  sudo mkdir -p /etc/ansible
  sudo cp ./.example/hosts $default_hosts
  sudo chown $USER:$USER $default_hosts
fi
}

linkExample(){
  mkdir -p dev
  ln -srf $default_hosts dev/
}

pullExample
makeDefaultInventory
linkExample
