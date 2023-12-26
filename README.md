# Ignition Flatcar Setup

My personal ignition flatcar setup, for initializing a working flatcar installation on a VPS, with naive secret management.
Intended for smaller VPS management; hence no terraform or k8s

Instructions adapted from the [Hetzner instructions from the flatcar docs](https://github.com/flatcar/flatcar-website/blob/master/content/docs/latest/installing/cloud/hetzner.md); though should work on any VPS provider with the ability to use a recovery OS 

``./run-butane.sh`` converts the butane config to an ignition json, and must be done on a machine with butane

By git cloning this repo on the recovery OS; or using wget / curl if git is unavailable, the target server will have access to the configuration and can then use ``./install-flatcar.sh`` to use the resulting json to initialize a flatcar installation.

Naive secret management is used, and requires ssh keys to be input manually on the target server.
