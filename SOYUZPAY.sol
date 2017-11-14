pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract SOYUZPAY is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function SOYUZPAY(address _owner)  UpgradeableToken(_owner) {
    name = "SOYUZPAY";
    symbol = "SOP";
    totalSupply = 100000000000000;
    decimals = 6;

    balances[_owner] = totalSupply;
  }
}