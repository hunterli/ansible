FROM python:3-slim

USER root

RUN echo "===> Install supporting tools..." && \
    sed -i 's#http://.*.debian.org/#http://mirrors.aliyun.com/#' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y curl procps sshpass openssh-client rsync && \
    echo "===> Install ansbile..." && \
    pip3 install -i https://mirrors.aliyun.com/pypi/simple/ ansible docker paramiko && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* && \
    echo "===> Adding hosts for convenience..." && \
    mkdir -p /etc/ansible && \
    echo "localhost" > /etc/ansible/hosts

RUN sed -i 's/^# alias/alias/g' /root/.bashrc

WORKDIR /playbook

CMD [ "ansible-playbook", "--version" ]
