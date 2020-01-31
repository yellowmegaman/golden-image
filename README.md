# Immutable infrastructure images. (golden images)

Usage:

```
packer build -force -only=aws golden-image.json
```
## What to look for:
Flag `-force` will overwrite existing image. You can play around with variables to create images with timestamp.

# What's the point?
Main point is to configure everything in advance, and never touch again after deployment.
Instances never get updated, only replaced with new ones.
