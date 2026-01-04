# Personal-savings-bank

## Objective
This smart contract acts as a private digital vault where users can deposit Ether (ETH),see the total balance of ether
but only the contract owner can withdraw it.

## Ownership Logic
- The owner is the address that deploys the contract.
- During deployment, `msg.sender` is stored as the owner.
- Ownership is checked using `require(msg.sender == owner)`.

## Functions
- `deposit()` allows anyone to send ETH to the contract.
- `getBalance()` returns the total ETH balance stored in the contract.
- `withdraw(uint amount)` allows only the owner to withdraw ETH.

## Security Check
The contract prevents the owner from withdrawing more ETH than the available balance
using a `require` condition.
