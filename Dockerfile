FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y --no-install-recommends ansible

RUN sed -i 's/^# alias/alias/g' /root/.bashrc

WORKDIR /playbook

CMD ["/bin/bash"]
