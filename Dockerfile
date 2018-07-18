
FROM ubuntu:16.04

RUN apt-get update 
RUN apt-get update >/dev/null 
RUN apt-get install -y git 
RUN apt-get install -y unzip 
RUN apt-get install -y curl 
RUN apt-get install -y build-essential 
RUN apt-get install -y make 
RUN apt-get install -y g++ 
RUN apt-get install -y locales >/dev/null 
RUN echo "en_US UTF-8" > /etc/locale.gen 
RUN locale-gen en_US.UTF-8 
RUN export LANG=en_US.UTF-8 
RUN export LANGUAGE=en_US:en 
RUN export LC_ALL=en_US.UTF-8 
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - 
RUN apt-get install -y nodejs 
RUN npm install node-gyp -g 
RUN curl https://install.meteor.com/ | sh 
RUN apt-get install -y openssh-client 
RUN echo 'PATH="/usr/local/node/bin:${PATH}"' >> /etc/bash.bashrc 

RUN  npm install --global mup