// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Wallet {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
        balance = 10000;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Solo el propietario");
        _;
    }

    function deposit() public payable {
        require(msg.value > 0, "falta plata");
        balance += msg.value;
    }

    function withdraw(uint256 _amount) public onlyOwner {
        require(_amount > 0, "Amount should be greater than 0");
        require(_amount <= balance, "Insufficient balance");
        balance -= _amount;
        payable(msg.sender).transfer(_amount);
    }
}
