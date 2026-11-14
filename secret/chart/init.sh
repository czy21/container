#!/bin/bash

for t in $(find "/home/runner/work/script/script/server/chart/ops/secret/cert" -mindepth 1 -maxdepth 1 -type d);do
  t_name=$(basename $t)

  t_crt=$t/${t_name}.crt
  t_key=$t/${t_name}.key

  kubectl create secret tls "${t_name}-secret" --cert="${t_crt}" --key="${t_key}" -n "ops" --dry-run=client -o yaml | kubectl apply -f -
done