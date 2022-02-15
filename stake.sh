#!/bin/bash

log=0
while [[ $log != "raw_log: '[]'" ]]
do
	current_block=$(curl -s http://localhost:26657/abci_info | jq -r .result.response.last_block_height)
	if [[ $current_block -eq 1 ]]
	then
		log=$(echo 1234jqka12 | umeed tx staking delegate umeevaloper13g6lzq6mfa8l86lgnsnxacltsssel6h0dvdv97 92521800000uumee  --gas 200000 --from main --chain-id umee-1 -y | grep raw_log)
	fi
    sleep 2	
done
