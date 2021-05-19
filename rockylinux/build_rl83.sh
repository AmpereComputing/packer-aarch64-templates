#!/usr/bin/env bash

echo "Validate rockylinux-83-aarch64.json"
packer validate rockylinux-83-aarch64.json

echo "Build rockylinux-83-aarch64.json"
packer build -on-error=abort -color=false -force rockylinux-83-aarch64.json

echo "convert to qcow2"
qemu-img convert -c -O qcow2 packer-rockylinux-83-aarch64/rockylinux-83-aarch64 rockylinux-83-aarch64.qcow2
sha256sum rockylinux-83-aarch64.qcow2
