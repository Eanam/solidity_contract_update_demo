// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "./Register.sol";
import "./INeedRegister.sol";
import "./Core.sol";
contract Withdraw is INeedRegister {

    constructor(Register _register) INeedRegister(_register) {}

    function withdrawSavings(uint256 _amount) external returns(bool, uint256) {
        address coreContractAddress =  register.getCoreContract();
        return Core(coreContractAddress).withdrawSavings(msg.sender, _amount);
    }

}