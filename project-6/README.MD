# Udacity Blockhcin Nanodegree Project 3 - Supply Chain DApp

Fair Trade Coffee from starter code adjusted to Honey Suplly Chain


## Project Write-Up


### UML Diagrams

[Activity Diagram](./uml/Honey%20Supply%20Chain%20-%20Activity%20Diagram.png)<br>
[Sequence Diagram](./uml/Honey%20Supply%20Chain%20-%20Sequence%20Diagram.png)<br>
[State Diagram](./uml/Honey%20Supply%20Chain%20-%20State%20Diagram.png)<br>
[Data Modelling](./uml/Honey%20Supply%20Chain%20-%20DataModelling.png)<br>


### Libraries

**Node**(v14.17.0): Manage Dependencies with npm. To install them use:
```
$ npm install
```

**Truffle**(v5.4.24 (core: 5.4.24)): Smart Contract developing, testing and deploying.

**Solidity**(0.4.24 (solc-js)): Smart Contract Version

**Web3.js**(v1.5.3)



## Contract Addresses deployed on Ethereum Rinkeby

| Contract Name | Contract Address|
|:--------------|:----------------|
|SupplyChain|[0x9921993fC9F48163D4bF9235fE564A92237E6acf](https://rinkeby.etherscan.io/address/0x9921993fc9f48163d4bf9235fe564a92237e6acf)|
|BeekeeperRole|0xb20719d6eafD923D31D751873f56375f71656b15|
|DistributorRole|0xe2E7621eE5A88e4a6e5C2DB655a95e1402B1148E|
|RetailerRole|0x4a625Fb8949dd03e459C549408E4EBC3282D0Db6|
|ConsumerRole|0x5ddB913355EB407155d909fa3Ab73d50E4BC423F|

[Deploying Logfile](./migrateContractsLog.txt)


### Account/Address Roles added

| Role | Address|
|:--------------|:----------------|
|Beekeeper|0xA9E2bc9Fb3B89c7B28F2aBAAf6075a4c40Bf6a9E|
|Distributor|0xd6467663efD3B63BA589976f5E22D35feAfA637B|
|Retailer|0x20a3815213a08359723788526a5D94dEb37A191c|
|Consumer|0xF8540deD56d082b3953eAea37B3Ee444fa04a9F0|
|ContractOwner|0xAFbe2e2c36D3dB225e6c1d99D1b753E37e400d72|