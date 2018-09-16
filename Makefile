.PHONY: dbuild-opennode-x8664
dbuild-opennode-x8664:
	docker run \

.PHONY: dbuild-cryptos-base-noarch
dbuild-cryptos-base-noarch:
	docker run \
		-e CARCH=noarch \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-base-x8664
dbuild-cryptos-base-x8664:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-base-armhf
dbuild-cryptos-base-armhf:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"

.PHONY: dbuild-cryptos-base-aarch64
dbuild-cryptos-base-aarch64:
	docker run \
		-e CARCH=aarch64 \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"
