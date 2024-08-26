# Getting started

* [Duo Docs](https://milkv.io/docs/duo/overview)

* [Boot the Duo](https://milkv.io/docs/duo/getting-started/boot)

* [Setup](https://milkv.io/docs/duo/getting-started/setup)

## USB to TTL serial cable

| Milk V | RS232 | Comment |
| - | - | - |
| GND | GND | green |
| GPIO13 (RX) | TX | blue |
| GPIO12 (TX) | RX | mangenta |

`minicom -b 115200 -8 -D /dev/ttyUSB0`

## Login

* Via uart (no password required): `root`
* Via rdnis (no password required): `ssh root@192.168.42.1`
