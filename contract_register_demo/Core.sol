// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "./Register.sol";
contract Core {

    //user savings
    mapping(address => uint256) private savings;

    function depositSavings(address _address, uint256 _amount) external returns(uint256){
        savings[_address] += _amount;
        return savings[_address];
    }

    function withdrawSavings(address _address, uint256 _amount) external returns(bool, uint256){
        uint256 currentAmount = savings[_address];
        if (currentAmount < _amount) {
            return(false, currentAmount);
        }else {
            savings[_address] -= _amount;
            return(true, savings[_address]);
        }
    }

    function checkSaving(address _address) external view returns(uint256) {
        return savings[_address];
    }
}