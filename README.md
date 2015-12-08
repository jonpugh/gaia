GAIA
====

The god user. 

This repo contains the playbooks and inventory for the god server. 

This user can connect to every other server as root.

This will grow.

Running Playbooks
=================

To run playbooks, use the following command:

```bash
$ ansible-playbook -i inventory playbook/PLAYBOOK.yml
```

This will run the playbook/PLAYBOOK.yml file on all hosts in the inventory file.

Running Commands
================

You can run adhoc commands with the `ansible` command:

```bash
$ ansible all -i inventory -m ping -u root
```

Running AdHoc commands
======================

ansible all -i devshop-inventory.php -u root -a "devshop --version"


albatross.devshop.build | success | rc=0 >>
DevShop version 0.x

dvpfabrics.devshop.build | success | rc=0 >>
DevShop version 0.x

internal.nucivic.build | success | rc=0 >>
DevShop version 0.x

system.devshop.build | success | rc=0 >>
DevShop version 0.x






Remote Dynamic Inventory
========================

DevShop.Build provides a dynamic inventory file of all the server nodes and users on the site. 

To run playbooks or commands using the Dynamic Inventory, use:

```bash
$ ansible -i devshop-inventory.php -m ping -u root
```

Playbooks
=========

- devshop-upgrade.yml: This will run apt-get upgrade and devshop upgrade on all devmaster servers.
- users.yml: Adds users from the vars/users.yml file.


Variables
=========

The "vars" files hold data about the system. 

- users.yml: An entry for each system admin user.  Each user gets added to every server, and their SSH keys from github are added to the system.
