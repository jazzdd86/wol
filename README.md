## container name: **wol**
This command creates a container of the [wol image](https://git.jotunheim.de/docker/wol). The container is used to send a wake on lan command to a specified MAC address. It is used by the NAS decrypt app wol
```bash
# docker run --name wol --net=host -e ifname=enp0s25 -e mac='74:d4:35:ad:4c:5f' -d jazz/wol
```