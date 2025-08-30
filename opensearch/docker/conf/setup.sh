#!/bin/bash

for ((i=1;i<=2;i++));do
 data_node_dir=/usr/share/opensearch/data/${i}
 mkdir -p ${data_node_dir} && chown -R 1000:0 ${data_node_dir}
done

echo "Waiting for Opensearch availability";
until curl -s http://opensearch-1-1:9200 | grep -q "opensearch-1-1"; do sleep 30; done;

echo "All done!";