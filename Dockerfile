FROM ubuntu:20.04
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul
RUN apt-get install -y curl git apt-utils valgrind build-essential gcc
RUN apt-get update
WORKDIR /
COPY ./init.sh /init.sh
RUN bash ./init.sh