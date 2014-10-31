# hackday mofo!

## Start the docker hosts (5)
```
cd Vagrant-docker
workan
vagrant up; vagrant provision --provision-with hosts
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
./job-1.sh
./job-2.sh
```

## check it out
- http://10.100.199.201:5050
- http://10.100.199.201:8080
- http://www.mmcloud.net
- http://matt.mmcloud.net
