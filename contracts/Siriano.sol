// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";


contract Siriano is ERC20, Ownable {
    using SafeMath for uint256;
    address admin;
    uint public TokenFee ;
    uint public TokenSold ;


    

    


    //After you create the tokens you have to send it to youself with _mint
     constructor(uint256 _supply, uint _fee) ERC20("Siriano", "SIRI") {
        _mint(msg.sender, _supply* (10**decimals()));
        admin = msg.sender;
        TokenFee = _fee;
        
    }

    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }

    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }
    function buyTokens(uint _value) public  payable{
        require(balanceOf(admin) >= _value);
        // require(msg.value == (_value).mul(TokenFee));
        _mint(msg.sender, _value);
        TokenSold += _value;
        
    }

    


    function transferFrom(
        address from, 
        address to,
        uint256 amount
    ) public virtual override returns (bool) {
        
        _spendAllowance(from, to, amount);
        _transfer(from, to, amount);
        return true;
    }











}