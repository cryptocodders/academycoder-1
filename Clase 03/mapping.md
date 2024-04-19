# Solidity Mapping: Definition and Use-Cases

## Definition and Use-Cases

In Solidity, a `mapping` is a key-value store used to efficiently store and retrieve data. The keys can be of any data type except for mappings themselves, and the values can be of any data type. 

### Common Use-Cases for Mappings

- **Storing balances** of Ethereum addresses in a token contract
- **Tracking ownership** of non-fungible tokens (NFTs)
- **Managing permissions** in a contract

## Example: Storing Key-Value Pairs in a Smart Contract

Here's a detailed example to illustrate how to use mapping in a smart contract to store and retrieve balances of Ethereum addresses.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {
    mapping(address => uint256) public balances;

    // Function to deposit Ether into the contract
    function deposit() public payable {
        require(msg.value > 0, "Amount should be greater than 0");
        balances[msg.sender] += msg.value;
    }

    // Function to withdraw Ether from the contract
    function withdraw(uint256 _amount) public {
        require(_amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }
}
```

## Mapping Syntax

Maps are created with the syntax `mapping(keyType => valueType)`.

- **keyType**: Can be any built-in value type (`int`, `uint`), `bytes`, `string`, or any contract.
- **valueType**: Can be any type, including another mapping or an array.
- **Mappings are not iterable**.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mapping {
    // Mapping from address to uint
    mapping(address => uint256) public myMap;

    function get(address _addr) public view returns (uint256) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }
}
```

## Limitations

#### Size and Length

Mappings don't have a concept of size or length:

```solidity
balances.length;     // Error: Mappings don't have a 'length' property
```

#### Accessing Values, Keys, and Iteration

You can't directly access the values or keys of a mapping:

```solidity
balances.values;     // Error: Mappings don't have a 'values' property
balances.keys;       // Error: Mappings don't have a 'keys' property
```

### Deleting Entries

In Solidity, you can't directly delete a mapping entry:

```solidity
delete balances[0x4..];  // This operation is not valid
```
