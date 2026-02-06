// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AvachainBadge is ERC721, Ownable {
    uint256 public nextTokenId;

    constructor() ERC721("Avachain Badge", "ACB") {}

    function mintBadge(address to) external onlyOwner {
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }
}