// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    mapping(address => uint) public balances;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit(uint amount) public {
        assert(amount > 0);
        balances[msg.sender] += amount;
    }

    function withdraw(uint amount) public {
        require(amount > 0, "Withdrawal amount must be greater than zero");

        if(balances[msg.sender] < amount){
            revert("Insufficient balance");
        }
        
        balances[msg.sender] -= amount;
    }

    function transfer(address recipient, uint amount) public {
        assert(recipient != owner);
        require(amount > 0, "Transfer amount must be greater than zero");
        if(balances[msg.sender] < amount){
            revert("Insufficient balance");
        }

        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    
}
