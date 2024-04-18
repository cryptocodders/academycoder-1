// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract SimpleWallet {
    address public owner;
    uint256 public balance;

    // Constructor to set the owner
    constructor() {
        owner = msg.sender;
    }

    // Public function to deposit ether into the wallet
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount should be greater than 0");
        balance += msg.value;
    }

    // Public function to withdraw ether from the wallet
    function withdraw(uint256 amount) public {
        require(amount > 0, "Withdrawal amount should be greater than 0");
        require(amount <= balance, "Insufficient balance");

        balance -= amount;
        payable(msg.sender).transfer(amount);
    }

    // Private function to get the contract's balance
    function getBalance() private view returns (uint256) {
        return balance;
    }

    // Public function to check the contract's balance
    function checkBalance() public view returns (uint256) {
        return getBalance();
    }

    // Pure function to calculate the sum of two numbers
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // View function to get the owner's address
    function getOwner() public view returns (address) {
        return owner;
    }
}
