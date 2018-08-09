<<<<<<< HEAD
.PHONY: dbuild-opennode-x8664
dbuild-opennode-x8664:
	docker run \
=======
.PHONY: dbuild-cryptos-base-noarch
dbuild-cryptos-base-noarch:
	docker run \
		-e CARCH=noarch \
>>>>>>> f9cfbeb186be70a122a85036a140582359add8c3
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

<<<<<<< HEAD
.PHONY: dbuild-opennode-armhf
dbuild-opennode-armhf:
=======
.PHONY: dbuild-cryptos-base-x8664
dbuild-cryptos-base-x8664:
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c"

.PHONY: dbuild-cryptos-base-armhf
dbuild-cryptos-base-armhf:
>>>>>>> f9cfbeb186be70a122a85036a140582359add8c3
	docker run \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:armhf \
<<<<<<< HEAD
		sh -c "cd cryptos/src && abuild checksum && abuild -c"
=======
		sh -c "cd cryptos/src && abuild checksum && abuild -c"

.PHONY: dbuild-cryptos-base-aarch64
dbuild-cryptos-base-aarch64:
	docker run \
		-e CARCH=aarch64 \
		-v `pwd`:/home/builder/cryptos/src \
		-v ${CRYPORTS_DIR}/_data/abuild:/home/builder/.abuild \
		-v ${CRYPORTS_DIR}/artifacts/repo:/home/builder/packages \
		dbuild:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"

>>>>>>> f9cfbeb186be70a122a85036a140582359add8c3
