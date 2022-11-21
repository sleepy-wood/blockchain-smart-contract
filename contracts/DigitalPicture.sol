// SPDX-License-Identifier: MIT
pragma solidity >=0.4.17 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract DigitalPicture is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721("DigitalPicture", "NDP") {}

  // web3.js
  function publishItem(address owner, string memory tokenURI) public returns(uint256) {
    _tokenIds.increment();

    uint256 newItemId = _tokenIds.current();
    _mint(owner, newItemId);
  }
}