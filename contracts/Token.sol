//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Token {
    string public name = "Amazing Furkan Token";
    string public symbol = "AFT";
    uint256 public totalSupply = 1000000;

    mapping(address => uint256) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}
