#!/usr/bin/env bash
sleep 0.5
cleos wallet unlock -n default --password PW5J5jYhgViyJmfEAjYpVsBKQYKrYxnzLfprpRysmKG6o1oZNMbPv
cleos set contract eosio /contracts/eosio.bios -p eosio
cleos create account eosio eosio.token EOS5Ap1C3PYRJxnAJkQrnDGE8VN7ux9r8fy73Rxw6eu7vmYKcMYTT EOS5Ap1C3PYRJxnAJkQrnDGE8VN7ux9r8fy73Rxw6eu7vmYKcMYTT
cleos create account eosio alice EOS79NjptwuiygNmWmGLXTHoK4eUsZZxWgprQZ3rgDdJvkbLFTkSA EOS79NjptwuiygNmWmGLXTHoK4eUsZZxWgprQZ3rgDdJvkbLFTkSA
cleos create account eosio bob EOS7jKrSCQgAHdYUNYJUagB7yvu1RaDbhzc7z5y9Miusp7xfbHqHK EOS7jKrSCQgAHdYUNYJUagB7yvu1RaDbhzc7z5y9Miusp7xfbHqHK
cleos create account eosio ilya EOS88PUwFsK1wYAiQEqEhUAGwXyv1hCcj4XPuCkvEyJ6sbtsxELiF EOS88PUwFsK1wYAiQEqEhUAGwXyv1hCcj4XPuCkvEyJ6sbtsxELiF
cleos set contract eosio.token /contracts/eosio.token -p eosio.token
cleos push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token
cleos push action eosio.token issue '[ "alice", "1000.0000 EOS", "" ]' -p eosio
cleos push action eosio.token issue '[ "bob", "1000.0000 EOS", "" ]' -p eosio
cleos push action eosio.token issue '[ "ilya", "1000.0000 EOS", "" ]' -p eosio
