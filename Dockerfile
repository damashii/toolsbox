FROM willlamb/toolsbox:baseimage16.04

run apt-get update \
   && apt-get install -y \
     binutils \
     git \
     libffi-dev \
     libssl-dev \
     openssl \
     pandoc \
     python3 \
     python3-dev \
     python3-pip \
     software-properties-common \
     ssh \
   && ln -s /usr/bin/python3 /usr/bin/python \
   && pip3 install --upgrade git+https://github.com/arthaud/python3-pwntools.git \
   && apt-get clean && rm -rf /var/lib/apt/lists/* 
CMD bash
