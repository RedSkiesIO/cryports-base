.PHONY: dbuild-opennode-x8664
dbuild-opennode-x8664:
	docker run \

.PHONY: dbuild-cryptos-base-noarch
dbuild-cryptos-base-noarch:
	docker run \
		-e CARCH=noarch \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-opennode-armhf
dbuild-opennode-armhf:
.PHONY: dbuild-cryptos-base-x8664
dbuild-cryptos-base-x8664:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-base-armhf
dbuild-cryptos-base-armhf:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"

.PHONY: dbuild-cryptos-base-aarch64
dbuild-cryptos-base-aarch64:
	docker run \
		-e CARCH=aarch64 \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"
