export ANSIBLE_CONFIG="../../ansible.cfg"
ansible-playbook -i ../../hosts.yml playbook.yml $1
