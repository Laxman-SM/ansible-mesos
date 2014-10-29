# hackday mofo!

## Start the docker hosts (5)
```
cd Vagrant-docker
vagrant up
```

## Provision them
```
cd ansible-mesos-playbook
unset ANSIBLE_CONFIG
ansible-playbook -i hosts playbook.yml
```

## attempt to fire a container
```
cd doit
http POST http://10.100.199.201/v2/apps < node.json
```
