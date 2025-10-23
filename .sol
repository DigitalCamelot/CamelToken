// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/*
  Simple ERC-20 for Base Mainnet
  - fixed total supply
  - owner can transfer tokens
*/

contract CamelToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("Camel Coin", "CAMEL") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }
}
