#!/bin/bash
set -e
tmp_generate=/home/opsor/docker/ssl/self-signed/___temp/generate
tmp_demo_ca=/home/opsor/docker/ssl/self-signed/___temp/demoCA
tmp_ca=/home/opsor/docker/ssl/self-signed/___temp/ca

mkdir -p \
${tmp_generate} \
${tmp_demo_ca}/certs \
${tmp_demo_ca}/newcerts \
${tmp_demo_ca}/crl \
${tmp_demo_ca}/private

touch ${tmp_demo_ca}/index.txt
echo "01" > ${tmp_demo_ca}/serial

conf_file=/home/opsor/docker/ssl/self-signed/build/output/conf

openssl_cnf=${conf_file}/openssl.cnf
openssl_ext=${conf_file}/openssl.ext

openssl genrsa -out ${tmp_generate}/czy21-internal.com.key 4096
openssl req -new -key ${tmp_generate}/czy21-internal.com.key -out ${tmp_generate}/czy21-internal.com.csr -config ${openssl_cnf} -nodes -subj "/C=CN/ST=SH/L=SH/O=Home/OU=IT/CN=czy21-internal.com"
openssl ca -in ${tmp_generate}/czy21-internal.com.csr -out ${tmp_generate}/czy21-internal.com.crt -cert ${tmp_ca}/ca.crt -keyfile ${tmp_ca}/ca.key -config ${openssl_cnf} -extfile ${openssl_ext}