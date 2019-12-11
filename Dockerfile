FROM node:10.15.1
RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install --no-install-recommends -y gcc-multilib g++-multilib apt-transport-https software-properties-common && \
    wget -nc https://dl.winehq.org/wine-builds/winehq.key && \
    apt-key add winehq.key && \
    apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main' && \
    apt update && \
    apt install -y --install-recommends winehq-stable
