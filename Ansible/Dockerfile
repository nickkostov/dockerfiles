FROM ubuntu:20.04

LABEL maintainer="nk@sportsmodule.com" \
org.label-schema.docker.cmd="docker run -it  nickkostov/ansible:latest bash"


RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y gnupg2 python3-pip sshpass git openssh-client && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
    
RUN python3 -m pip install --upgrade pip cffi && \
    pip install ansible==2.10.3 && \
    pip install mitogen ansible-lint jmespath && \
    pip install --upgrade pywinrm

RUN mkdir /ansible && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

VOLUME /home/nick/Repositories/Dockerfiles/Ansible 
WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]
