FROM 10.242.138.121:5000/library/ubuntu:14.04
# Add ansible configuration
 #un ansible using playbook
#Install Ansible
#Install pre-reqs for Ansible
#RUN apt-get update && \
 #   apt-get install -y python python-dev python-pip && \
#RUN pip install ansible
#RUN apt-get update && \
#    apt-get install -y git
ADD tomcat.yml  /etc/ansible/tomcat.yml
ADD host  /etc/ansible/hosts
WORKDIR /etc/ansible
RUN ansible-playbook etc/ansible/tomcat.yml -c local
EXPOSE 8080
ENTRYPOINT ["ansible-playbook"]


