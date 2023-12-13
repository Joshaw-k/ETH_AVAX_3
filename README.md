# Gontar Token

## Overview

This a basic implementation of an ERC-20 token with minting, transfer, and burn functionalities. This contract was deployed using the Remix IDE.

### OpenZeppelin Libraries

- `@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol`: This library provides the core ERC-20 functionality for managing token supply, balances, and transfers.
- `@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Burnable.sol`: This extension adds the burn function to the token, allowing users to burn their own tokens.
- `@openzeppelin/contracts@5.0.1/access/Ownable.sol`: This library provides access control mechanisms, ensuring only the owner can perform sensitive actions like minting.

### Code Breakdown

- The contract `Gontar` is declared, which inherits from `ERC20`, `ERC20Burnable`, and `Ownable`. This means that the `Gontar` contract will have all the properties and methods of these three contracts.
- The `constructor` function is defined with one parameter `initialOwner`. This function is called once when the contract is deployed. The `initialOwner` is set as the owner of the contract using the `Ownable` contract. The `ERC20` contract is also initialized with the name "Gontar" and the symbol "GTR".
  The `mint` function is defined. This function is used to create new tokens and assign them to an address. The `mint` function is only callable by the owner of the contract, as indicated by the `onlyOwner` modifier. The `_mint` function is an internal function from the ERC20 contract that is used to create new tokens

### Contract Address

[link](https://sepolia.etherscan.io/address/0xfba6e6b74748c2995fd80a5e18119291aeff2d9a)
