[![Docker Stars](https://img.shields.io/docker/stars/evild/alpine-redis.svg?style=flat-square)](https://hub.docker.com/r/evild/alpine-redis/)
[![Docker Pulls](https://img.shields.io/docker/pulls/evild/alpine-redis.svg?style=flat-square)](https://hub.docker.com/r/evild/alpine-redis/)
[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/evild/alpine-redis/latest.svg?style=flat-square)](https://hub.docker.com/r/evild/alpine-redis/)

# Alpine Redis

This image is based on [evild/alpine-base](https://hub.docker.com/r/evild/alpine-base/)

## Version

- `latest` [(Dockerfile)](https://github.com/Evild67/docker-alpine-redis/blob/master/Dockerfile)
- `3.2.0` [(Dockerfile)](https://github.com/Evild67/docker-alpine-redis/blob/master/Dockerfile)
## Basic usage

```
docker run --name redis evild/alpine-redis
```

## Custom Redis configuration

You can overwrite redis configuration:

Create your own redis.conf. Make sure your redis.conf file has a volume to ```/etc/redis-local.conf```

```docker run -v /your/path/to/redis.conf:/etc/redis-local.conf:ro --name redis evild/alpine-redis```
