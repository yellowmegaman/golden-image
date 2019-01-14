# Hashicorp Packer templates to create golden-image ami/disk images in GCP/AWS/Digitalocean

Combined packer template to create image with:
- [Consul](https://github.com/hashicorp/consul)
- [Nomad](https://github.com/hashicorp/nomad)
- [Docker](https://github.com/docker/docker-ce)
- [docker-compose](https://github.com/docker/compose)
- [rexray](https://github.com/rexray/rexray)
- [goss](https://github.com/aelsabbahy/goss)
- [consul-template](https://github.com/hashicorp/consul-template)
- a bunch of standart system utilities, including enabled sysstat (sar) metrics collector.

Usage:

```
packer build -force -only=gce,aws,do golden-image.json
```

Configuration above will:
- create 3 images, one per specified above cloud
- output image names (ami id)

## What to look for:
Flag `-force` will overwrite existing image. You can play around with variables to create images with timestamp.

You may also like :D
https://github.com/yellowmegaman/terraform-google-consul-nomad-cluster
