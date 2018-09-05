# Missing fully-functional eos docker container setup
Just run, and you have functional EOS token, and couple of accounts to play with.
Accounts:
1. *alice* (1000 EOS)
1. *bob* (1000 EOS)
1. *ilya* (1000 EOS)
## Get started
1. Install docker
1. Run run.sh
1. To pause container use `docker pause/unpause eosio`
1. To stop container and drop all data use `docker stop eosio`. *Next run of container will be absolutly fresh*

### Using cleos
You can use cleosAlise.sh script to make cleos from your host machine works in container:
`source cleosAliase.sh`
Or you can "SSH" directly to container:
`docker exec -it eosio /bin/bash`
### Sharing folders
You can add shared volumes between host and container modifing `run.sh` script (Example: `-v ~/eos:/hosteos \`).
### Keys and passwords
Keosd wallet password, owner keys for alise, bob and ilya accounts stored in keys folder.

You can use them with Scatter or anything.
