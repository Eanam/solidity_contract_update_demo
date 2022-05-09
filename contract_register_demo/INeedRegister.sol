// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "./Register.sol";
abstract contract INeedRegister {

    Register internal immutable register;

    //input the address of Register when deploy this contract
    constructor(Register _register) {
        register = _register;
    }
}