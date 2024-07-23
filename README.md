# MyToken

This repository contains the implementation of the Creation of Token, a simple ERC-20-like token smart contract written in Solidity. The contract allows for minting and burning tokens, and maintains a mapping of addresses to token balances.

## Contract Details

- **Token Name**: CryptoCoder
- **Token Symbol**: CRC
- **Compiler Version**: Solidity >=0.6.12 <0.9.0

## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a public variables that stores the token info.(tokenName, symbol, total supply), mapping(address => uint) that maps address to their respective balance, and has
two function mint and burn function which do following task mention below.

1. **Minting**: Increases the total supply and the balance of a specified address.
2. **Burning**: Decreases the total supply and the balance of a specified address and also check that the balance of account is greater than or equal to the amount that is supposed to be burned.
3. **Balance Mapping**: Keeps track of each address's balance.
   
 Public Variables: 

- `string public TokenName`: Stores the name of the token.
- `string public Symbol`: Stores the abbreviation of the token.
- `uint public TotalSupply`: Keeps track of the total supply of the token.
  
- `mapping(address => uint) public balances`: Maps addresses to their respective balances.

## Usage
to uses this contract or exectue you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Mytoken.sol). Copy and paste the following code into the file:

```solidity
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
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.25" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Mytoken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can use the deployed contract interface to call the mint and burn functions.You can enter addresses and values to test the functionality. After entering data, click on "transact" button to execute the function and retrieve the balance, totalsupply and do testing. 

## Contact
For any questions or suggestions, feel free to open an issue or contact the repository owner.

Mail - adityasharma3107a@gmail.com
