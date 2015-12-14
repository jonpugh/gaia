export ANSIBLE_FORCE_COLOR=true
ansible all -i devshop-inventory.php -u root -a "su aegir -c 'devshop status'"
