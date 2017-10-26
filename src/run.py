from OpenSSL import crypto

print("generating csr key")

csr_key = crypto.PKey()
csr_key.generate_key(crypto.TYPE_RSA, 2048)

print("generating CSR")
csr = crypto.X509Req()
csr.set_pubkey(csr_key)

print("signing CSR")

signedCert = crypto.X509()
signedCert.set_issuer()