
# Error Handling

This solidity program aims at demonstrating the functionality of require(), rever() and assert() functions used for Error Handling using the basic syntax and functionality of the Solidity programming language.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has functions like deposit(), withdraw() and transfer(). deposit() function is used to deposit the amount into the owners account. withdraw() function is used to withdraw the amount from the owners account. trtansfer() function is used to tranfer the amount from the owners account to the recipient account that cannot be the owners account.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:
```javascript
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the deposit, withdraw and transfer function. 


## Authors

Kshitij Kumar 
https://www.linkedin.com/in/kshitij-kumar-733a72270/
