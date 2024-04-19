# Solidity `msg` Global Variable: Attributes and Properties

The `msg` global variable in Solidity provides access to the data of the current call, including:

- `msg.data`: Complete calldata
- `msg.gas`: Remaining gas
- `msg.sender`: Address of the sender
- `msg.sig`: First four bytes of the calldata
- `msg.value`: Amount of Ether sent with the message

## `msg.data`

Contains the complete calldata, i.e., the data that's passed along with the transaction.

### Example

```solidity
bytes memory data = msg.data;
```

## `msg.gas`

Indicates the amount of gas remaining for execution in the current call.

### Example

```solidity
uint256 gasLeft = msg.gas;
```

## `msg.sender`

Represents the address of the account (EOA or contract) that initiated the current call.

### Example

```solidity
address sender = msg.sender;
```

## `msg.sig`

Contains the first four bytes of the calldata, which typically represent the function signature of the called function.

### Example

```solidity
bytes4 signature = msg.sig;
```

## `msg.value`

Specifies the amount of Ether sent along with the message.

### Example

```solidity
uint256 amount = msg.value;
```

