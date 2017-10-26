#!/usr/bin/env bash

for i in {1..10}
do
    echo "signing CSR $i"
    openssl ca -batch -config openssl-ca.cnf -policy signing_policy -extensions signing_req -out servercert.pem -infiles servercert.csr
done