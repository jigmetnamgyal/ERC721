//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxNumberOfWhiteListedAddress;

    mapping(address => bool) public whiteListedAddresses;

    uint8 public numOfWhiteListedAddress;

    constructor(uint8 _maxNumOfWhiteListedAddress) {
        maxNumberOfWhiteListedAddress = _maxNumOfWhiteListedAddress;
    }

    function addToWhiteList() public{
        require(!whiteListedAddresses[msg.sender], "You are already whitelisted");
        require(numOfWhiteListedAddress < maxNumberOfWhiteListedAddress, "The whitelist is over");

        whiteListedAddresses[msg.sender] = true;
        numOfWhiteListedAddress += 1;
    }
}