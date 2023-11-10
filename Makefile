#####
## Build images (and ensure they are up to date)
build:
	@echo 'Pull & build required images'
	docker-compose build

#####
## Start containers
start:
	@echo 'Starting containers'
	docker-compose up -d

#####
## Stop containers & remove docker networks
stop:
	@echo 'Stoping containers'
	docker-compose down

#####
## Open container
exec:
	@echo 'Open container'
ifeq ($(dc),ubuntu)
	docker exec -it -w /var/www/html dc.$(dc) /bin/bash
else
	docker exec -it dc.$(dc) /bin/bash
endif

#####
## Display available make tasks
help:
	@echo 'Recipes List:'
	@echo ''
	@echo 'make <recipes>'
	@echo ''
	@echo '+-----------------+--------------------------------------------------------------------+'
	@echo '| Recipes         | Utility                                                            |'
	@echo '+-----------------+--------------------------------------------------------------------+'
	@echo '| start           | Start containers (Also builds & pull images, if there not exists)  |'
	@echo '| stop            | Stop containers & remove docker networks                           |'
	@echo '| build           | Re/Build containers                                                |'
	@echo '| exec dc=NAME    | Open container                                                     |'
	@echo '+-----------------+--------------------------------------------------------------------+'
	@echo ''
