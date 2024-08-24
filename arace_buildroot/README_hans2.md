# Requirements

* MilkV Duo S with WiFi/BT


# Build

https://milkv.io/docs/duo/getting-started/buildroot-sdk#2-compiled-using-docker

```bash
cd docker
git clone https://github.com/milkv-duo/duo-buildroot-sdk.git --depth=1
cd duo-buildroot-sdk
docker run -it --name duodocker -v $(pwd):/home/work milkvtech/milkv-duo:latest /bin/bash

cd /home/work
./build.sh milkv-duos-sd

# Create SD image successful: out/milkv-duos-sd-20240615-0006.img
# 800MBytes
```

Useful commands

```bash
milkv-duo
milkv-duo-spinand
milkv-duo-spinor
milkv-duo256m
milkv-duo256m-spinand
milkv-duo256m-spinor
milkv-duos-emmc
milkv-duos-sd
```