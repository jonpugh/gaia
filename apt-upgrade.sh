export ANSIBLE_FORCE_COLOR=true
ansible-playbook playbooks/apt-upgrade.yml -i devshop-inventory.php --extra-vars "devshop_version=$DEVSHOP_VERSION" -v
