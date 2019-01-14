# Hashicorp Packer templates to create immutable infrastructure image (golden image) ami/disk images in GCP/AWS/Digitalocean

Combined packer template to create image with:
- debian stable (can be parameterized)
- [Consul](https://github.com/hashicorp/consul)
- [Nomad](https://github.com/hashicorp/nomad)
- [Docker](https://github.com/docker/docker-ce)
- [docker-compose](https://github.com/docker/compose)
- [rexray](https://github.com/rexray/rexray)
- [goss](https://github.com/aelsabbahy/goss)
- [consul-template](https://github.com/hashicorp/consul-template)
- a bunch of standart system utilities, including enabled sysstat (sar) metrics collector.
- disabled auto-updates

Usage:

```
packer build -force -only=gce,aws,do golden-image.json
```

Configuration above will:
- create 3 images, one per specified above cloud
- output image names (ami id)

## What to look for:
Flag `-force` will overwrite existing image. You can play around with variables to create images with timestamp.

# What's the point?
Main point is to configure everything in advance, and never touch again after deployment.
Instances never get updated, only replaced with new ones.
Basic flow:
- deploy instances
- deploy docker containers in orchestration system (nomad)
- make moneys ;D
- time to update?
- add new, updated node
- drain old node, all containers
- containers migrated? ok
- drop old node

So there won't be a case of some update failure never again, everything standardized.

### You may also like :D
https://github.com/yellowmegaman/terraform-google-consul-nomad-cluster
