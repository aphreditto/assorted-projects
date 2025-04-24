## Debian Home Server
# Contents
 - [Format Partitions](#format-partitions)
 - [Install OMV Extras](#install-omv-extras)
 - [Set Up Zpool](#set-up-zpool)
 - [Set Up Appuser](#set-up-appuser)
 - [Docker Compose](#docker-compose)

## Format Partitions
[Return](#debian-home-server)
ssh in
`sudo /sbin/fdisk /dev/<HDD>`
`n`
`default`
`default`
`default`
`<1/2 HDD sectors>`
`n`
`default`
`default`
`default`
`default`
`w`

## Install OMV Extras
[Return](#debian-home-server)

`sudo wget -O - https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/install | sudo bash`

continue following
https://tane.harre.nz/omv7-with-zfs/
(https://archive.md/BRUf4)

## Set Up Zpool
[Return](#debian-home-server)

ssh in
`sudo apt update`
`sudo apt install zfsutils-linux` 

create pool
`sudo zpool create harmonia raidz2 /dev/sda1 /dev/sdb1 /dev/sdb2 /dev/sdc1 /dev/sdc2 /dev/sdd -f`

check for success
`zpool status`

enable compression
`sudo zfs set compression=lz4 harmonia`

create ZIL (SLOG) device
`sudo zpool add harmonia log /dev/sde`

`sudo zpool add harmonia log /dev/disk/by-id/tonos`

## Set Up Shared Folders
[Return](#debian-home-server)

[file structure, roughly](https://archive.md/hLpfP)

## Set Up users
[Return](#debian-home-server)

`sudo useradd -U <user>`
`sudo usermod -aG sudo <user>`
`sudo passwd <user>`
*password*
`sudo usermod -c "User Name, user@example.com" <user>`

create separate users for each docker container

Jellyfin:
`sudo useradd -U jellyfin`
`sudo usermod -aG render jellyfin`
`sudo usermod -aG video jellyfin`
`getent group`

## Docker Compose
[Return](#debian-home-server)

make compose (yaml) file
`---
services:
  jellyfin:
    image: lscr.io/linuxserver/jellyfin:latest
    container_name: jellyfin
    environment:
      - PUID=1005
      - PGID=1005
      - TZ=US/Central
    volumes:
      - ${PATH_TO_APPDATA}/jellyfin/config:/config
      - ${PATH_TO_APPDATA}/jellyfin/cache:/cache
      - CHANGE_TO_COMPOSE_DATA_PATH/media:/media
    devices:
      - /dev/dri:/dev/dri
    ports:
      - 8096:8096
      - 8920:8920
      - 7359:7359/udp
      - 1900:1900/udp
    restart: unless-stopped
volumes:   # add this section
  step:    # does not need anything underneath this`
