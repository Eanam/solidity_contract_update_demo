// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "./Register.sol";
import "./INeedRegister.sol";
import "./Core.sol";
contract Deposit is INeedRegister {

    constructor(Register _register) INeedRegister(_register){}
    
    function deposit(uint256 _amount) external returns(uint256){
        address coreContractAddress =  register.getCoreContract();
        return Core(coreContractAddress).depositSavings(msg.sender, _amount);
    }

}