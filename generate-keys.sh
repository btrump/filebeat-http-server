#!/bin/bash

openssl req -x509 -out ssl/nginx.crt -keyout ssl/nginx.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=apiserver.local' -extensions EXT -config <( \
   printf "[dn]\nCN=apiserver.local\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:apiserver.local\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
