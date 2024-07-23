// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;


contract MyToken{
    // Public variables to store the details about the token
    string public TokenName = 'CryptoCoder';
    string public Symbol = 'CRC';
    uint public TotalSupply = 0 ; 

    // Mapping from address to balance
    mapping(address => uint) public balances; 

    // Mint function to increase the total supply and balance of a given address
    function mint(address _address, uint _value) public{
        balances[_address] += _value;
        TotalSupply += _value;
    }

    // Burn function to decrease the total supply and balance of a given address
    function burn(address _address, uint _value) public{
        if(balances[_address] >= _value){
            balances[_address] -= _value;
            TotalSupply -= _value;
        }
        else{
            revert ("balance is insufficient to burn") ;
        }
    }

}
