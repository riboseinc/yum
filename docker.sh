#!/bin/bash
CENTOS_VERSION="${1:-7}"

docker run --platform linux/amd64 -it \
	--workdir /usr/local/yum \
	-v "$(pwd)":/usr/local/yum amd64/centos:"${CENTOS_VERSION}" bash
