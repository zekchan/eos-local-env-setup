#!/usr/bin/env bash
#старт ноды
rm -rf /root/eosio-wallet
cp -R /root/eosio-wallet-init /root/eosio-wallet
/localEnv/indocker/initAccounts.sh & \
nodeos -e -p eosio \
--plugin eosio::producer_plugin \
--plugin eosio::history_plugin \
--plugin eosio::chain_api_plugin \
--plugin eosio::history_api_plugin \
--plugin eosio::http_plugin \
-d /mnt/dev/data \
--config-dir /mnt/dev/config \
--http-server-address=0.0.0.0:8888 \
--access-control-allow-origin=* \
--contracts-console \
--filter-on='*' \
--http-validate-host=false