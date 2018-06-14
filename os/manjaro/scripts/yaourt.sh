#!/bin/sh

list=("android-studio" \
      "dolphin-emulator" \
      "franz" \
      "yed")

sudo mount -t tmpfs -o size=15000000000,mode=1777 overflow /tmp
yaourt -S ${list[*]} --noconfirm
