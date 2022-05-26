FROM ubuntu:18.04
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul
ENV LC_ALL ko_KR.UTF-8
RUN apt-get install -y tzdata
RUN apt-get install -y locales
RUN locale-gen ko_KR.UTF-8
RUN apt-get install -y curl git apt-utils valgrind build-essential gcc
RUN apt-get update
WORKDIR /
COPY ./init.sh /init.sh
RUN bash ./init.sh
