if [ $1 ]; then
    DEVSHOP_VERSION=$1
else
    DEVSHOP_VERSION='0.x'
fi

export ANSIBLE_FORCE_COLOR=true

echo "INSTALLING VERSION: $DEVSHOP_VERSION"
ansible-playbook playbooks/devshop-upgrade.yml -i devshop-inventory.php --extra-vars "devshop_version=$DEVSHOP_VERSION" -v

