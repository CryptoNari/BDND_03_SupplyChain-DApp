module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
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