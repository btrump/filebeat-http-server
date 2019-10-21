#!/bin/bash

docker container run --rm \
  -p 443:443 -p 80:80 \
  -itd \
  --name nginx-tls \
  nginx-tls
