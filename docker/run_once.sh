#!/bin/bash

set -e

apt install mkcert

mkcert -install

mkdir -p ssl

mkcert -key-file ssl/private.key -cert-file ssl/public.crt vcap.me  


