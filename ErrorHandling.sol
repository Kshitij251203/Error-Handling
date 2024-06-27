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
