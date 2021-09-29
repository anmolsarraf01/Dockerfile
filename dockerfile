FROM python
COPY . /src
CMD ["python", "/src/PythonExample.py"]


FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
curl
CMD /bin/bash


FROM ubuntu:15.10
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
