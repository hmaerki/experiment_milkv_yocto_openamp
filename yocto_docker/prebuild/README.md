
# Just try to boot official image

* https://milkv.io/docs/duo/resources/image-sdk
  * https://github.com/milkv-duo/duo-buildroot-sdk
    * Power ON
    * Using the IO-Board baseboard
  
```bash
wget https://github.com/milkv-duo/duo-buildroot-sdk/releases/download/Duo-V1.1.2/milkv-duo256m-sd-v1.1.2-2024-0801.img.zip
unzip milkv-duo256m-sd-v1.1.2-2024-0801.img.zip
export SDCARD=/dev/sda
sudo dd if=milkv-duo256m-sd-v1.1.2-2024-0801.img of=${SDCARD} conv=fsync status=progress
```
sdcard: 891MB, 117s

## Boot
--> red led: on, blue led: blink

```text
[15288.250792] usb 3-1.3.4: New USB device found, idVendor=3346, idProduct=100c, bcdDevice= 5.10
[15288.250805] usb 3-1.3.4: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[15288.250809] usb 3-1.3.4: Product: NCM
[15288.250811] usb 3-1.3.4: Manufacturer: Cvitek
[15288.250814] usb 3-1.3.4: SerialNumber: 0123456789
[15288.317178] cdc_ncm 3-1.3.4:1.0: MAC-Address: 6e:6e:38:38:b7:08
[15288.317330] cdc_ncm 3-1.3.4:1.0 usb0: register 'cdc_ncm' at usb-0000:00:14.0-1.3.4, CDC NCM (NO ZLP), 6e:6e:38:38:b7:08
[15288.317396] usbcore: registered new interface driver cdc_ncm
[15288.319100] usbcore: registered new interface driver cdc_wdm
[15288.320533] usbcore: registered new interface driver cdc_mbim

ifconfig
enx6e6e3838b708: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.42.215  netmask 255.255.255.0  broadcast 192.168.42.255
        inet6 fe80::33a6:745c:fcd8:9048  prefixlen 64  scopeid 0x20<link>
        ether 6e:6e:38:38:b7:08  txqueuelen 1000  (Ethernet)
```

`ssh root@192.168.42.1` # PW: milkv
