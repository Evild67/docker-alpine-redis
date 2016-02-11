FROM evild/alpine-base:1.0.0
MAINTAINER Dominique HAAS <contact@dominique-haas.fr>

ENV REDIS_VERSION redis-3.0.7

RUN apk --no-cache add wget build-base linux-headers \
      && mkdir -p /tmp/src \
      && cd /tmp/src \
      && echo "e56b4b7e033ae8dbf311f9191cf6fdf3ae974d1c ${REDIS_VERSION}.tar.gz" > ${REDIS_VERSION}.tar.gz.sha1 \
      && wget http://download.redis.io/releases/${REDIS_VERSION}.tar.gz \
      && sha1sum -c ${REDIS_VERSION}.tar.gz.sha1 \
      && tar -zxf ${REDIS_VERSION}.tar.gz \
      && cd /tmp/src/${REDIS_VERSION} \
      && make \
      && make install \
      && rm -rf /tmp/src \
      && mkdir -p /var/lib/redis \
      && mkdir -p /var/log/redis \
      && adduser -S -h /var/lib/redis redis \
      && mkdir /data \
      && chown redis /var/lib/redis \
      && chown redis /var/log/redis \
      && chown -R redis /data \
      && apk del wget build-base linux-headers \

ADD root /

VOLUME ["/data"]

EXPOSE 6379
