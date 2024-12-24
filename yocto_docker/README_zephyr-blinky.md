
rm oe/meta-milkv/recipes-kernel/linux/linux-milkv-duo/dt-add-gpio-led.patch

## Notes
oe/meta-milkv/recipes-kernel/linux/linux-milkv-duo/dts-add-remoteproc-support.patch
oe/meta-milkv/recipes-kernel/linux/linux-milkv-duo/milkv-duo_defconfig

https://developer.toradex.com/software/cortex-m/how-to-use-remoteproc/
```
# dmesg | grep -E "remote|rproc"
[    1.629455] remoteproc remoteproc0: imx-rproc is available
```

# /etc/init.d/rproc start
modprobe: module cv180x-mbox not found in modules.dep
modprobe: module cv180x-rproc not found in modules.dep
/etc/init.d/rproc: line 9: can't create /sys/class/remoteproc/remoteproc0/state: nonexistent directory
/etc/init.d/rproc: line 10: can't create /sys/class/remoteproc/remoteproc0/firmware: nonexistent directory
/etc/init.d/rproc: line 11: can't create /sys/class/remoteproc/remoteproc0/state: nonexistent directory
