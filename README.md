# ansible
Ansible Dockerfile base on Ubuntu18.04

Build command:
`docker build --rm -t ansible .`

Run command:
``docker run -it --rm --name ansible -v `pwd`:/playbook ansible``
