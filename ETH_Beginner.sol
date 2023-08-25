// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // public variables here
    string public newTokenName = "KalSet";
    string public tokenAbbvr = "NEW_KAL";
    uint public newTotalSupply = 1000000;


    // mapping variable here
    mapping(address=>uint) public newTokenHolders;


    // mint function
    function mint(address _address, uint _value) public{
        newTotalSupply+=_value;
        newTokenHolders[_address] += _value;
    }


    // burn function
    function burn(address _address, uint _value) public{
        require(newTokenHolders[_address] > _value, "Cannot burn more than balance tokens");
        newTotalSupply-=_value;
        newTokenHolders[_address] -= _value;
    }

}
