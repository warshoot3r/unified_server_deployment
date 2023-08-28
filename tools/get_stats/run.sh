export ANSIBLE_CONFIG="./ansible.cfg"
ansible-playbook -i hosts.yml ansible-playbook.yml -l linuxservers $1
