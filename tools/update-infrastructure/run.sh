export ANSIBLE_CONFIG="./ansible.cfg"
read -p "Preparing to update everything. Update pikvm ? (internet access must be allowed) Enter 'Y' to continue: " response

if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "selected Yes"
    ansible-playbook -i hosts.yml ansible-playbook.yml $1
else
    echo "Updating only linux servers"
fi
ansible-playbook -i hosts.yml ansible-playbook.yml -l linuxservers $1
