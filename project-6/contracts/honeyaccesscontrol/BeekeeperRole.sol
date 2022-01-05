pragma solidity ^0.4.24;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'BeekeeperRole' to manage this role - add, remove, check
contract BeekeeperRole {
  using Roles for Roles.Role;

  // Define 2 events, one for Adding, and other for Removing
  event BeekeeperAdded(address indexed account);
  event BeekeeperRemoved(address indexed account);

  // Define a struct 'beekeepers' by inheriting from 'Roles' library, struct Role
  Roles.Role private beekeepers;

  // In the constructor make the address that deploys this contract the 1st farmer
  constructor() public {
    _addBeekeeper(msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyBeekeeper() {
    require(isBeekeeper(msg.sender));
    _;
  }

  // Define a function 'isBeekeeper' to check this role
  function isBeekeeper(address account) public view returns (bool) {
    return beekeepers.has(account);
  }

  // Define a function 'addBeekeeper' that adds this role
  function addBeekeeper(address account) public onlyBeekeeper {
    _addBeekeeper(account);
  }

  // Define a function 'renounceBeekeeper' to renounce this role
  function renounceBeekeeper() public {
    _removeBeekeeper(msg.sender);
  }

  // Define an internal function '_addBeekeeper' to add this role, called by 'addBeekeeper'
  function _addBeekeeper(address account) internal {
    beekeepers.add(account);
    emit BeekeeperAdded(account);
  }

  // Define an internal function '_removeBeekeeper' to remove this role, called by 'removeBeekeeper'
  function _removeBeekeeper(address account) internal {
    beekeepers.remove(account);
    emit BeekeeperRemoved(account);
  }
}