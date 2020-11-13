#!/usr/bin/env bash

echo "Validate oraclelinux-82-aarch64.json"
packer validate oraclelinux-82-aarch64.json

echo "Build oraclelinux-82-aarch64.json"
packer build -on-error=abort -color=false -force oraclelinux-82-aarch64.json

echo "convert to qcow2"
qemu-img convert -c -O qcow2 packer-oraclelinux-r8u2-aarch64/oraclelinux-r8u2-aarch64 oraclelinux-r8u2-aarch64.qcow2
sha256sum oraclelinux-r8u2-aarch64.qcow2

