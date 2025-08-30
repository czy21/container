#!/bin/bash

set -e
dirs=(data logs extensions temp)
for t in ${dirs[*]};do
  t_dir=/volume5/storage/docker-data/sonarqube/$t/
  sudo mkdir -p ${t_dir} && sudo chown 1000:1000 ${t_dir}
done