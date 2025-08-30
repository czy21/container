#!/bin/bash

sudo docker run --rm \
--entrypoint "" \
-v /volume1/storage/docker-data/harbor/conf/harbor.yml:/input/harbor.yml \
-v /volume1/storage/docker-data/harbor/data/:/data/ \
-v /volume1/storage/docker-data/harbor/data/:/compose_location/ \
-v /volume1/storage/docker-data/harbor/data/common/config/:/config/ \
--privileged \
goharbor/prepare:v2.5.3 sh -c "[ -f /compose_location/docker-compose.yml ] || python3 main.py prepare"