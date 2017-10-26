#!/usr/bin/env bash

start=`date`

count=1000

for i in {1..${count}}
do
    echo "signing CSR $i"
    openssl ca -batch -config openssl-ca.cnf -policy signing_policy -extensions signing_req -out servercert.pem -infiles servercert.csr
done

end=`date`

echo "signed $count CSRs, started at $start and ended at $end"