FROM python
COPY . /src
CMD ["python", "/src/helloworld.py"]
CMD ["python", "./pythonExample.py"]


FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
curl
CMD ["bash"]



FROM ubuntu:16.04
RUN  apt-get update -y && \
     apt-get upgrade -y && \
     apt-get dist-upgrade -y && \
     apt-get -y autoremove && \
     apt-get clean
RUN apt-get install -y p7zip \
    p7zip-full \
    unace \
    zip \
    unzip \
    xz-utils \
    sharutils \
    uudeview \
    mpack \
    arj \
    cabextract \
    file-roller \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]


FROM node:10.18.0
RUN npm install -g codefresh
CMD codefresh version /
CMD codefresh auth get-contexts
CMD codefresh auth create-context anmol --api-key 6156a5bf1c9c400fc8f4f0a8.5454dd37c0c221879f0f9dec321c2d42
CMD codefresh auth current-context anmol
CMD codefresh run 6155b800517f94b2d07b813f


 

COPY ./my-bash.sh /
RUN chmod +x /my-bash.sh
CMD ["bash", "./my-bash.sh"]
