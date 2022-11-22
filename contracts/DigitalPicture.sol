// SPDX-License-Identifier: MIT
pragma solidity >=0.4.17 < 0.9.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract DigitalPicture is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721("DigitalPicture", "NDP") {}

  // public으로 정의된 함수만 web3.js에서 쓸 수 있다.
  function publishItem(address owner, string memory tokenURI) public returns(uint256) {
    _tokenIds.increment(); // begin 1

    uint256 newTokenId = _tokenIds.current();
    // ERC 721 앞에 언더바는 internal 함수
    _mint(owner, newTokenId);
    _setTokenURI(newTokenId, tokenURI);

    return newTokenId;
  }
}