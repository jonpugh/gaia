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

Playbooks
=========

- devshop-upgrade.yml: This will run apt-get upgrade and devshop upgrade on all devmaster servers.
- users.yml: Adds users from the vars/users.yml file.
