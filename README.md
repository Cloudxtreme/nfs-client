nfs-client
==========

[![Image Layers](https://badge.imagelayers.io/prologic/nfs-client:latest.svg)](https://imagelayers.io/?images=prologic/nfs-client:latest)

A small (~10 MB) Docker image based on Alpine Linux intended for connecting to remote nfs volumes.

Based on:

-   <https://github.com/evq/nfs-client>
-   <https://github.com/flaccid/docker-nfs-client>

Caveat
------

Currently isn't very useful beyond being the basis for other containers, [internally mounted nfs volumes can't be shared to other containers](https://github.com/docker/docker/issues/4213)

Usage
-----

``` sourceCode
docker run -i -t --rm --cap-add SYS_ADMIN -v /mnt/nfs -e SERVER=192.168.1.100 -e SHARE=/data/movies prologic/nfs-client /bin/sh
```
