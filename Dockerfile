FROM ubuntu:18.04
RUN apt update && \
 apt install -y wget gcc make cmake g++ git \
        valgrind libboost-all-dev language-pack-en-base libboost-python-dev python3-dev \
        sshpass gfortran libsuperlu-dev libopenblas-dev \
	clang-tidy clang libboost-all-dev python-yaml fontconfig python3-pip\
 && rm -rf /var/lib/apt/lists/* 
RUN apt update && \
    apt install -y clang-8 clang-tidy-8
RUN apt-get update && \
    apt-get install -y qt5-qmake qt5-default libqt5charts5 libqt5charts5-dev openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install conan
ENV LANG en_US.utf-8
