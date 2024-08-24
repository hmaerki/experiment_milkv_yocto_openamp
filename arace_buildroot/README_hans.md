
# Links


* [Andreas Spiess / MilkV](https://youtu.be/SeExddxWdNs?si=XTCeV6Co1brmWJ7c)
* [ST32 H745zi](https://www.st.com/en/evaluation-tools/nucleo-h745zi-q.html)
* [ST32](https://www.youtube.com/watch?v=MLcULDnF5ic)

Yocto: https://github.com/kinsamanka/meta-milkv/blob/master/README.md

https://www.freertos.org/RTOS_ports.html
FreeRTOS Kernel Ports


# Build

https://milkv.io/docs/duo/getting-started/buildroot-sdk#2-compiled-using-docker

```bash
git clone https://github.com/milkv-duo/duo-buildroot-sdk.git --depth=1
cd duo-buildroot-sdk
docker run -itd --name duodocker -v $(pwd):/home/work milkvtech/milkv-duo:latest /bin/bash

docker exec -it duodocker /bin/bash -c "cd /home/work && cat /etc/issue && ./build.sh milkv-duo"

docker exec -it duodocker /bin/bash -c "cd /home/work && cat /etc/issue && ./build.sh milkv-emmc"
```

https://milkv.io/docs/duo/getting-started/rtoscore
Mailbox Example

Search for 'DUO_LED_ON' in:
docker/duo-buildroot-sdk/freertos/cvitek/driver/rtos_cmdqu/include/rtos_cmdqu.h
docker/duo-buildroot-sdk/freertos/cvitek/task/comm/src/riscv64/comm_main.c
docker/duo-buildroot-sdk/freertos/cvitek/task/comm/src/riscv64/milkv_duo_io.h


