# Wake a computer with this container
This image builds on Alpine OS and uses phythons "awake" package.

Run this image with following command

```
# docker run --rm --net=host -e mac='11:11:11:11:11:11' jazzdd/wol
```

* `--rm` - clean up container after stopping it
* `--net=host` - attach container to the host network interface (otherwise the wake command could not get through the docker network bridge)
* `-e mac='11:11:11:11:11:11'` - specify the MAC address of the computer you want to wake
