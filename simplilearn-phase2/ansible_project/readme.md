stp-1: Install ansible
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible

stp-2: sudo service ssh status. Check for current running port.

stp-3: Create a public key using ssh-keygen.

stp-4: ssh-copy-id 127.0.0.1 -p 42006 to copy public key to remote

stp-5: ssh 127.0.0.1 -p 42006. SSH to localhost

stp-6: ansible server1 -i inventory.ini -m ping

server1 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}

stp-7: Get public ip of vm -> dig +short myip.opendns.com @resolver1.opendns.com

stp-8: run ansible playbook ansible-playbook playbook.yml -i inventory.ini