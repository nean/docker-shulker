FROM mhart/alpine-node:12

ADD https://github.com/destruc7i0n/shulker/archive/master.tar.gz /tmp/shulker.tar.gz

RUN tar -C /opt -xf /tmp/shulker.tar.gz && \
    rm /tmp/shulker.tar.gz && \
    mkdir /shulker-config && \
    ln -s /opt/shulker-master /opt/shulker

WORKDIR /opt/shulker

COPY entry-point.sh entry-point.sh

RUN yarn install && \
    yarn build

VOLUME /shulker-config

ENTRYPOINT ["./entry-point.sh"]
