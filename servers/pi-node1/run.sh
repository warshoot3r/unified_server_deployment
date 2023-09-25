export ANSIBLE_CONFIG="../../ansible.cfg"
ansible-playbook -e variables.yml -e @"../../variables.yml" -i 10.10.70.187, playbook.yml $1
