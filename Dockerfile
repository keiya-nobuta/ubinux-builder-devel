FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update \
  && apt install -y \
    gawk \
    wget \
    git \
    diffstat \
    unzip \
    texinfo \
    gcc \
    build-essential \
    chrpath \
    socat \
    cpio \
    python3 \
    python3-pip \
    python3-pexpect \
    python3-git \
    python3-jinja2 \
    python3-pytest-pylint \
    python3-subunit \
    python-is-python3 \
    xz-utils \
    debianutils \
    iputils-ping \
    libegl1-mesa \
    libsdl1.2-dev \
    xterm \
    mesa-common-dev \
    zstd \
    liblz4-tool \
    file \
    bsdmainutils \
    systemd-sysv \
    locales \
    curl \
    sudo \
  && apt autoremove -y

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN useradd -m ubinux \
  && echo "%ubinux    ALL=(ALL)    NOPASSWD:    ALL" >> /etc/sudoers.d/ubinux \
  && chmod 0440 /etc/sudoers.d/ubinux
USER ubinux
