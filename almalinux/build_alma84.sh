#!/usr/bin/env bash

echo "Validate almalinux-84-aarch64.json"
packer validate almalinux-84-aarch64.json

echo "Build almalinux-84-aarch64.json"
packer build -on-error=abort -color=false -force almalinux-84-aarch64.json

echo "convert to qcow2"
qemu-img convert -c -O qcow2 packer-almalinux-84-aarch64/almalinux-84-aarch64 almalinux-84-aarch64.qcow2
sha256sum almalinux-84-aarch64.qcow2
