#!/bin/bash

sudo docker run --rm \
--entrypoint "" \
-v /volume5/storage/docker-data/harbor/conf/harbor.yml:/input/harbor.yml \
-v /volume5/storage/docker-data/harbor/data/:/data/ \
-v /volume5/storage/docker-data/harbor/data/:/compose_location/ \
-v /volume5/storage/docker-data/harbor/data/common/config/:/config/ \
--privileged \
goharbor/prepare:v2.5.3 sh -c "if [ ! -f /compose_location/docker-compose.yml ];then python3 main.py prepare;fi"