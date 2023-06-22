FROM debian:bookworm

RUN apt-get update && apt-get -y dist-upgrade && apt-get clean all
