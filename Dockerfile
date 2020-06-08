FROM ubuntu:latest

RUN apt-get -q update && apt-get -q install -y \
    default-jdk \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get -q update && apt-get -q install -y \
    build-essential\
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
