![Ampere Computing](https://avatars2.githubusercontent.com/u/34519842?s=400&u=1d29afaac44f477cbb0226139ec83f73faefe154&v=4)

# packer-aarch64-templates/rockylinux

Packer templates for RockyLinux AARCH64

## Building an Rocky Linux image

Download the git sources

```
git clone https://github.com/AmpereComputing/packer-aarch64-template
```
Change into the rockylinux directory within the project directory.

```
cd packer-aarch64-templates/rockylinux
```

Execute the included script to build RL8.3.

```
./build_rl83.sh
```

## References

* [OSUOSL Packer Template for Centos8 aarch64](https://github.com/osuosl/packer-templates/blob/master/centos-8-aarch64-openstack.json)
* [Oracle Linux image tools](https://github.com/oracle/ol-sample-scripts/tree/master/oracle-linux-image-tools/)
* [Building (Small) Oracle Linux Images For The Cloud](https://blogs.oracle.com/linux/building-small-oracle-linux-images-for-the-cloud)
