#!/bin/bash
yc compute instance create \
--name reddit-from-image \
--hostname reddit-from-image \
--memory=4 \
--create-boot-disk image-id=fd8g58isb0tgn240affe \
--metadata serial-port-enable=1 \
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
--zone ru-central1-a \
--ssh-key ~/.ssh/appuser.pub
