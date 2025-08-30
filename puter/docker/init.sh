#!/bin/bash

set -e
conf_dir=/volume5/storage/docker-data/puter/conf/
data_dir=/volume5/storage/docker-data/puter/data/
sudo mkdir -p ${conf_dir} ${data_dir} && sudo chown 1000:1000 ${conf_dir} ${data_dir}