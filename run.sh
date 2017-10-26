#!/usr/bin/env bash

start=`date`

count=15000

for ((i=0; i<=count; i++));
do
    echo "signing CSR $i"
    openssl ca -batch -config openssl-ca.cnf -policy signing_policy -extensions signing_req -out servercert.pem -infiles servercert.csr
done

end=`date`

echo "signed $count CSRs, started at $start and ended at $end"