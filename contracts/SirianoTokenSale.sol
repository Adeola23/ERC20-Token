
// // SPDX-License-Identifier: MIT
// pragma solidity >=0.4.22 <0.9.0;

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// import "@openzeppelin/contracts/access/Ownable.sol";
// import "@openzeppelin/contracts/utils/math/SafeMath.sol";
// import "./Siriano.sol";

// contract SirianoTokenSale  {
//     address admin;
//     uint public TokenFee ;
//     uint public TokenSold ;
//     Siriano public Siri;
//     using SafeMath for uint256;

//     event Sell(address _buyer, uint _amount);
//     constructor(Siriano _tokenContract, uint _tokenPrice){
//         admin = msg.sender;
//         Siri = _tokenContract;
//         TokenFee = _tokenPrice;
//     }

//     function TokenPrice() public view returns(uint){
//         return TokenFee;
//     }

    

//     function buyTokens(uint _value) public  payable{
//         require(Siri.balanceOf(address(this)) >= _value);
//         require(msg.value == (_value).mul(TokenFee));
//         Siri._mint(msg.sender, _value);
//         TokenSold += _value;
        
//     }

//     function TokenSod() public view returns(uint){
//         return TokenSold;
//     }


// }