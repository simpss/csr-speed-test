#!/usr/bin/env bash

start=`date +%s`

for i in {1..15000}
do
    echo "signing CSR $i"
    openssl ca -batch -config openssl-ca.cnf -policy signing_policy -extensions signing_req -out servercert.pem -infiles servercert.csr
done

end=`date +%s`
runtime=$((end-start))

echo "script finished in $runtime"