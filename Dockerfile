FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -q update && apt-get -qy install \
    default-jdk \
    libxext6 \
    build-essential\
    bash-completion \
    wget \
    unzip \
    vim \
    git \
    curl \
    maven \
    ca-certificates-java \
    && rm -rf /var/lib/apt/lists/* \
    && update-ca-certificates -f

ENV JAVA_HOME /usr/lib/jvm/default-java
RUN export JAVA_HOME
