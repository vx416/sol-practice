// SPDX-License-Identifier: MIT
pragma solidity ^0.6.2;

contract SimpleBank {
    mapping (string => uint256) private _balances; // State variable

    string private _name; 
    string private _code;

    event Deposit(string indexed owner, uint256 money);
    event Transfer(string indexed from, string indexed to, uint256 money);

    constructor () public {
        _name = "demo_bank";
        _code = "0909";
    }

    function name() public view returns (string memory) {
        return _name;
    } 

    function code() public view returns (string memory) {
        return _code;
    }

    function deposit(string memory account, uint256 money) public returns (bool) {
        _balances[account] += money;
        emit Deposit(account, money);
        return true;
    }

    function transfer(string memory from, string memory to, uint256 money) public returns (bool) {
        require(_balances[from] > money, "balance is not enough");
        _balances[from] -= money;
        _balances[to] += money;
        emit Transfer(from, to, money);
        return true;
    }

    function balance(string memory account) public view returns (uint256) {
        return _balances[account];
    }
}