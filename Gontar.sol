// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";

contract Gontar is ERC20, Ownable {
    constructor(address initialOwner) ERC20("Gontar", "GTR") Ownable(initialOwner) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transferToken(address to, uint256 amount) public {
        _transfer(msg.sender,to,amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender,amount);
    }
}
