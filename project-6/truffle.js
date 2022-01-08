const HDWalletProvider = require('truffle-hdwallet-provider');
//
const fs = require('fs');
const secrets = JSON.parse(fs.readFileSync(".secrets.json").toString().trim());


module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
    },
    rinkeby: {
      provider: () => new HDWalletProvider(secrets.mnemonic, `https://rinkeby.infura.io/v3/${secrets.infuraKey}`),
      network_id: 4,       // Rinkeby's id
      gas: 4500000,
      gasPrice: 1000000000,
      // networkCheckTimeout: 999999,        
      // confirmations: 2,    // # of confs to wait between deployments. (default: 0)
      // timeoutBlocks: 200,  // # of blocks before a deployment times out  (minimum/default: 50)
      // skipDryRun: true     // Skip dry run before migrations? (default: false for public nets )
    }
  },
  // Compiler configuration to match starter code contracts "pragma solidity ^0.4.23"
  compilers: {
    solc: {
      version: "0.4.24",    // A version or constraint - Ex. "^0.5.0"
                            // Can be set to "native" to use a native solc or
                            // "pragma" which attempts to autodetect compiler versions
    }
  }
};