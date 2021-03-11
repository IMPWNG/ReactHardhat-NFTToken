//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/extensions/ERC721/IERC721Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract ImpwongToken is IERC721, IERC721Metadata {

  string private name = "Importateur Wong Token";
  string private symbole = "IWT";

  // Mapping from token ID to owner address
  mapping (uint256 => address) private _owners;

  constructor (string memory name_, string memory symbol_) {
        name = name_;
        symbol = symbol_;
    }


  //Returns the token collection name.
  function name() external view returns (string memory);

  //Returns the token collection symbol.   
  function symbol() external view returns (string memory);

  //Returns the Uniform Resource Identifier (URI) for `tokenId` token. 
  function tokenURI(uint256 tokenId) external view returns (string memory);



}
