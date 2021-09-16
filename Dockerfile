FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get install curl vim sudo build-essential -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install nodejs -y
RUN node -v
RUN npm -v

RUN adduser --disabled-password --gecos '' judge
RUN adduser judge sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
