// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.17 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract Hello {
    string public hi = "Hello solidity";
    uint256 public a = 3;

    function setA1(uint256 value) public returns(uint256) {
        a = value;
        return a;
    }
}