
# Error Handling

This solidity program aims at demonstrating the functionality of require(), rever() and assert() functions used for Error Handling using the basic syntax and functionality of the Solidity programming language.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has functions like greaterElement() and devide(). greaterElement() function is used to return the greatest element out of the two passed values and if both the values are same then the function will not work. devide() function is used to devide numerator with denominator and if the denominator passed is equal to 0 then the function will stop working. If the numerator is not completely devisible by denominator then again the function stops working.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:
```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ErrorHandling {

    function greaterElement(uint a, uint b) public pure returns (uint){
        assert(a !=b );
        if(a > b){
            return a;
        }else{
            return b;
        }
    }

    function devide(uint numerator , uint denominator) public pure returns (uint){
       
        require(denominator != 0,"Cannot devide by 0");

        if(numerator % denominator != 0){
            revert("Numerator must be devisible by the Denominator");
        }

        return numerator / denominator;
    }
    
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the greaterElement and devide function. 


## Authors

Kshitij Kumar 
https://www.linkedin.com/in/kshitij-kumar-733a72270/
