#!/usr/bin/env bash
docker run --rm --name eosio -d -p 8888:8888 -p 9876:9876 \
-v ~:/work \
-v `pwd`/eosio-wallet:/root/eosio-wallet-init \
-v `pwd`:/localEnv \
eosio/eos-dev:v1.3.1 \
/localEnv/indocker/startNode.sh

docker attach eosio
