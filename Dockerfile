FROM gcc:9.4.0
WORKDIR /
COPY ./init.sh /init.sh
RUN bash ./init.sh