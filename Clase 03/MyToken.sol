// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("MyToken", "MTK") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

contract TokenWallet is Ownable {
    MyToken public token;

    constructor(address _tokenAddress) {
        token = MyToken(_tokenAddress);
    }

    /**
     * @dev Function to deposit tokens into the wallet.
     * @param amount The amount of tokens to deposit.
     */
    function deposit(uint256 amount) public {
        token.transferFrom(msg.sender, address(this), amount);
    }

    /**
     * @dev Function to withdraw tokens from the wallet.
     * @param amount The amount of tokens to withdraw.
     */
    function withdraw(uint256 amount) public {
        require(token.balanceOf(address(this)) >= amount, "Not enough tokens in the wallet");
        token.transfer(msg.sender, amount);
    }
}
