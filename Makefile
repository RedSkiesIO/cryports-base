.PHONY: dbuild-cryptos-base-x8664
dbuild-cryptos-base-x8664:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages/ \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-base-armhf
dbuild-cryptos-base-armhf:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages/ \
		dbuild:armhf \
		sh -c "ls -la cryptos"
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-base-aarch64
dbuild-cryptos-base-aarch64:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \	
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages/ \
		dbuild:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

