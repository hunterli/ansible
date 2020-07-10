# ansible
Ansible Dockerfile base on python:3-slim

Build command:
`docker build --rm -t ansible .`

Run command:
``docker run -it --rm --name ansible -v `pwd`:/playbook ansible``
