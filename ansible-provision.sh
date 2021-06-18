sudo apt update

sudo apt upgrade -y

sudo apt-add-repository ppa:ansible/ansible

sudo apt-get update

sudo apt install ansible -y

sudo apt install python-pip -y

pip install boto boto3 ansible -y

sudo echo "[web]" >> /etc/ansible/hosts

sudo echo "192.168.0.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> /etc/ansible/hosts

sudo echo "[db]" >> /etc/ansible/hosts

sudo echo "192.168.0.20 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> /etc/ansible/hosts

sudo echo "[aws]" >> /etc/ansible/hosts

sudo echo "192.168.0.30 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> /etc/ansible/hosts


























sudo echo "host_key_checking = False" >> /etc/ansible/ansible.cfg

sudo ssh-keygen -t rsa -b 4096 -f ~/.ssh/Nathan_aws

sudo openssl rand -base64 2048 > vault.pass

sudo ansible-vault create group_vars/all/pass.yml --vault-password-file vault.pass

sudo echo "export AWS_ACCESS_KEY_ID=AKIAR7JPX6TNOIBXPRFE" >> ~/.ssh/Nathan_aws 

sudo echo "export AWS_SECRET_ACCESS_KEY=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" >> ~/.ssh/Nathan_aws

sudo echo "export ANSIBLE_HOSTS=/etc/ansible/ec2.py"

sudo echo "export EC2_INI_PATH=/etc/ansible/ec2.ini" >> /etc/ansible/ec2.py

sudo ansible-playbook /home/vagrant/AWS_Ansible/playbook_3.yml --vault-password-file vault.pass

sudo ansible-playbook /home/vagrant/AWS_Ansible/provision_app.yml --vault-password-file vault.pass

sudo ansible-playbook /home/vagrant/AWS_Ansible/sync_app.yml --vault-password-file vault.pass


