image = acme-no-login

# ---
# ---
# ---

docker-clean:
	docker rmi -f $(image)

docker-build:
	docker build -t $(image) .

docker-sh:
	docker run -i -t $(image) /bin/bash -l

docker-run:
	docker run -p 49090:49090 -i -t $(image) /bin/sh -c 'make -f /app/Makefile _mn' # TODO: probably terrible idea

# ---

mongod-run:
	mkdir -p /data/mongodb && mongod --fork --dbpath /data/mongodb --logpath /var/log/mongod.log
	
node-run:
	nodejs /app/index.js

# ---

_dbr: docker-build docker-run

# ---

_mn: mongod-run node-run

# ---
