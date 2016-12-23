FROM willlamb/toolsbox:baseimage16.04

run apt-get update \
   && apt-get install -y \
     libffi-dev \
     libssl-dev \
     openssl \
     pandoc \
     python2.7 \
     python2.7-dev \
     python-pip \
     software-properties-common \
     ssh \
   && apt-get update \
   && apt-add-repository ppa:pwntools/binutils \
   && apt-get install -y binutils \
   && pip install --upgrade pwntools requests \
   && apt-get clean && rm -rf /var/lib/apt/lists/* 
CMD bash
