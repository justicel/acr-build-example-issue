FROM scratch

ADD rootfs-$TARGETARCH.tar.xz /

RUN apt-get update \
  && apt-get -y dist-upgrade \
  && apt-get clean all \
  && uname -a

CMD ["sh"]
