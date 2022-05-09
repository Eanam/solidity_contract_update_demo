// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract Register {

    string constant CORE_CONTRACT_KEY = "core_contract_key";

    address private immutable owner ;

    mapping(string => address) private contracts;

    constructor() {
        owner = msg.sender;
    }

    //to register or update a contract address
    function registerContract(string memory _key, address _address) private{
        contracts[_key] = _address;
    }

    //to get the contract address
    function getContractAddress(string memory _key) private view returns(address){
        return contracts[_key];
    }


    //to register Core contract
    function registerCoreContract(address _address) external auth{
        //TODO：can judge _address is contract address or not here
        registerContract(CORE_CONTRACT_KEY, _address);
    }

    //to get Core contract 
    function getCoreContract() external view returns(address) {
        return getContractAddress(CORE_CONTRACT_KEY);
    }


    //make sure that only owner can update the contract 
    modifier auth {
        require(msg.sender == owner, "Only owner can update the contract");
        _;
    }
}