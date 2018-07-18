
FROM node:latest

RUN apt-get update 
RUN apt-get install -y git 

RUN locale-gen en_US.UTF-8 
RUN export LANG=en_US.UTF-8 
RUN export LANGUAGE=en_US:en 
RUN export LC_ALL=en_US.UTF-8 
RUN curl https://install.meteor.com/ | sh 
RUN apt-get install -y openssh-client 
RUN echo 'PATH="/usr/local/node/bin:${PATH}"' >> /etc/bash.bashrc 

RUN  npm install --global mup