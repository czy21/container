#!/bin/bash

set -e
data_dir=/volume5/storage/docker-data/ubuntu-lede/data/
sudo mkdir -p ${data_dir} && sudo chown 1000:1000 ${data_dir}