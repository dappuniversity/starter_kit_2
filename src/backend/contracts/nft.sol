// SDPX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzepellin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


 contract NFT is ERC721URIStorage{
        uint tokenCount;
        constructor() ERC721("DApp NFT","DAAP"){} 
        function mint(string memory _tokenURI) external returns (uint){
            tokenCount++;
            _safeMint(msg.sender, tokenCount);
            _setTokenURI(tokenCount, _tokenURI); 
            return (tokenCount);
        }
 } 