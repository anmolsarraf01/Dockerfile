FROM python
COPY . /src
CMD ["python", "/src/PythonExample.py"]


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


FROM centos
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all
COPY ./my-bash.sh /
RUN chmod +x /my-bash.sh
ENTRYPOINT ["/my-bash.sh"]
CMD ["bash"]
