// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageExample {
    // Event to log the message details
    event MessageDetails(
        bytes data,
        uint256 gas,
        address sender,
        bytes4 sig,
        uint256 value
    );

    // Function to demonstrate the use of msg attributes
    function sendMessage() public payable {
        // Emit the message details
        emit MessageDetails(
            msg.data,       // Complete calldata
            gasleft(),      // Remaining gas
            msg.sender,     // Address of the sender
            msg.sig,        // First four bytes of the calldata
            msg.value      // Amount of Ether sent
        );
    }

    // Function to receive Ether
    receive() external payable {}
}
