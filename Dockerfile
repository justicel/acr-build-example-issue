FROM scratch

ADD rootfs-$TARGETPLATFORM.tar.xz /

RUN apt-get update \
  && apt-get -y dist-upgrade \
  && apt-get clean all \
  && uname -a

CMD ["sh"]
