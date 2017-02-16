# openvpn-docker

#### This is the docker image used by the kubernetes helm chart openvpn: [https://github.com/kubernetes/charts/tree/master/stable/openvpn](https://github.com/kubernetes/charts/tree/master/stable/openvpn).

#### There is not much here other than a base alpine image with packages needed to run openvpn: openssl, easy-rsa, openvpn, and iptables.  Much of the configuration is done through kubernetes and helm. Please refer to the scripts [here](https://github.com/kubernetes/charts/blob/master/stable/openvpn/templates/config-openvpn.yaml) for better understanding.

#### That chart originally used a base Alpine image, but the Alpine repositories worked inconsistently so this image was created to remove a point of failure.


To rebuild:

```bash

	git clone https://github.com/jfelten/openvpn-docker.git
	cd openvpn-docker
	docker build .
	
```