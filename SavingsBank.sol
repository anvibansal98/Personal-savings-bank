// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.24;

contract SavingsBank{
    // Address of the contract owner
    address public owner;
    constructor() {
        owner = msg.sender;
    }

    // Function to deposit ETH to the contract
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
    }

    // Function to get the total balance of ETH stored in the contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Function to withdraw ETH (only owner can call)
    function withdraw(uint _amount) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(_amount <= address(this).balance, "Insufficient balance");

        payable(owner).transfer(_amount);
    }

}

