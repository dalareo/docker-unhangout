FROM ubuntu:14.04
MAINTAINER David A. Lareo

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential curl python git
RUN curl -sL https://deb.nodesource.com/setup_0.10 | sudo -E bash -
RUN apt-get install -y nodejs
RUN cd /opt && git clone https://github.com/unhangout/unhangout
RUN echo "{ }" >> /opt/unhangout/conf.json
RUN cd /opt/unhangout && npm install
WORKDIR /opt/unhangout
CMD ["npm", "start"]
