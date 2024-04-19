// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CombinedModifiers {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    modifier notZero(uint256 _value) {
        require(_value != 0, "Value cannot be zero");
        _;
    }

    function setValue(uint256 _value) public onlyOwner notZero(_value) {
        value = _value;
    }
}