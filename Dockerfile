FROM ethereum/client-go:v1.12.1

WORKDIR /poa-chain

COPY node01 /poa-chain/node01
COPY genesis.json /poa-chain/genesis.json

EXPOSE 8545

CMD ["--datadir", "node01", "--syncmode", "full", "--networkid", "12345", "--http", "--http.addr", "0.0.0.0", "--http.port", "8545", "--http.api", "eth,net,web3,personal,miner,admin", "--http.vhosts=*", "--http.corsdomain=*", "--allow-insecure-unlock", "--nodiscover", "--unlock", "0xaAfaCF4d8cdCCa6CfAfE50B96010419CEaA168eE", "--password", "node01/password.txt", "--mine", "--miner.etherbase", "0xaAfaCF4d8cdCCa6CfAfE50B96010419CEaA168eE"]

