.PHONY: dbuild-cryptos-base-noarch
dbuild-cryptos-base-noarch:
	docker run \
		-e CARCH=NOARCH \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c -f -P"

.PHONY: dbuild-cryptos-base-x8664
dbuild-cryptos-base-x8664:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c -f -P"

.PHONY: dbuild-cryptos-base-armhf
dbuild-cryptos-base-armhf:
	docker run \
		-e CARCH=armhf \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c -f -P"

.PHONY: dbuild-cryptos-base-aarch64
dbuild-cryptos-base-aarch64:
	docker run \
		-e CARCH=aarch64 \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c -f -P"

